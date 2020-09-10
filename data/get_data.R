
# Load packages -----------------------------------------------------------

library(tidyverse)
library(lubridate)
library(readxl)


# Worldwide COVID-19 Statistics -------------------------------------------

# Homepage:
# https://data.europa.eu/euodp/en/data/dataset/covid-19-coronavirus-data


covid19_cases_worldwide_url <-
  "https://opendata.ecdc.europa.eu/covid19/casedistribution/csv"

covid19_cases_worldwide_raw <- read_csv(covid19_cases_worldwide_url)

nonterritories <- c("Cases_on_an_international_conveyance_Japan")

covid19_cases_worldwide <-
  covid19_cases_worldwide_raw %>%
  transmute(date = dmy(dateRep), year, month, day,
            territory = countriesAndTerritories, continent = continentExp,
            population = popData2019, cases, deaths) %>%
  filter(!territory %in% nonterritories,
         year >= 2020,
         month <= 6) %>%
  write_csv("data/covid19_cases_worldwide.csv") %>%
  type_convert()


covid19_cases_worldwide_monthly <-
  covid19_cases_worldwide %>%
  mutate(month = month(month, label = TRUE)) %>%
  group_by(year, month, territory, continent) %>%
  summarize(across(c(cases, deaths), sum), across(population, mean),
            .groups = "drop") %>%
  write_csv("data/covid19_cases_worldwide_monthly.csv") %>%
  type_convert()


covid19_cases_canada_monthly <-
  covid19_cases_worldwide_monthly %>%
  filter(territory == "Canada") %>%
  select(-continent, -population) %>%
  write_csv("data/covid19_cases_canada_monthly.csv") %>%
  type_convert()


# Canadian Population Per Province ----------------------------------------

# Homepage:
# https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/hlt-fst/pd-pl/Table.cfm

population_canada_url <-
  paste0("https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/hlt-fst/pd-pl/Tables/File.cfm",
         "?T=101&SR=1&RPP=25&PR=0&CMA=0&CSD=0&S=50&O=A&Lang=Eng&OFT=CSV")

population_canada_raw <- read_csv(population_canada_url, n_max = 14)

population_canada <-
  population_canada_raw %>%
  select(province = `Geographic name`, population = `Population, 2016`) %>%
  write_csv("data/population_canada.csv")


# Canadian COVID-19 Statistics --------------------------------------------

# Homepage:
# https://health-infobase.canada.ca/covid-19/epidemiological-summary-covid-19-cases.html

covid19_cases_provinces_url <-
  "https://health-infobase.canada.ca/src/data/covidLive/covid19.csv"

covid19_cases_provinces_raw <- read_csv(covid19_cases_provinces_url)

nonprovinces <- c("Canada", "Repatriated travellers")

province_codes <- c("Alberta" = "AB", "British Columbia" = "BC",
                    "Manitoba" = "MB", "New Brunswick" = "NB",
                    "Newfoundland and Labrador" = "NL",
                    "Northwest Territories" = "NT", "Nova Scotia" = "NS",
                    "Nunavut" = "NU", "Ontario" = "ON",
                    "Prince Edward Island" = "PE", "Quebec" = "QC",
                    "Saskatchewan" = "SK", "Yukon" = "YT")

covid19_cases_provinces <-
  covid19_cases_provinces_raw %>%
  left_join(population_canada, by = c("prname" = "province")) %>%
  select(province = prname, population, date, cases = numtoday,
         deaths = numdeathstoday, recovered = numrecoveredtoday,
         tested = numtestedtoday) %>%
  mutate(date = dmy(date),
         province_code = province_codes[province],
         region = case_when(
           province %in% c("Alberta", "Manitoba", "Saskatchewan") ~ "Prairies",
           province %in% c("British Columbia") ~ "West Coast",
           province %in% c("New Brunswick", "Newfoundland and Labrador",
                           "Nova Scotia", "Prince Edward Island") ~ "Atlantic",
           province %in% c("Northwest Territories", "Nunavut", "Yukon") ~ "North",
           province %in% c("Ontario", "Quebec") ~ "Central"),
         across(c(cases, deaths, recovered, tested),
                pmax, 0, na.rm = TRUE)) %>%
  filter(!province %in% nonprovinces) %>%
  relocate(province_code, region, .after = province) %>%
  write_csv("data/covid19_cases_provinces.csv") %>%
  type_convert()

covid19_cases_provinces_weekly <-
  covid19_cases_provinces %>%
  mutate(year = year(date), week = isoweek(date)) %>%
  group_by(province, province_code, region, year, week) %>%
  summarize(population = unique(population),
            monday = min(date),
            across(c(cases, deaths, recovered, tested),
                   sum, na.rm = TRUE)) %>%
  group_by(province, province_code, region) %>%
  filter(week != min(week), week != max(week)) %>%
  ungroup() %>%
  select(-year, -week) %>%
  rename(week = monday) %>%
  write_csv("data/covid19_cases_provinces_weekly.csv") %>%
  type_convert()


# BC COVID-19 Statistics --------------------------------------------------

# Homepage:
# http://www.bccdc.ca/health-info/diseases-conditions/covid-19/data

covid19_cases_bc_url <-
  "http://www.bccdc.ca/Health-Info-Site/Documents/BCCDC_COVID19_Dashboard_Case_Details.csv"

covid19_cases_bc_raw <- read_csv(covid19_cases_bc_url)

covid19_cases_bc <-
  covid19_cases_bc_raw %>%
  select(date = Reported_Date, region = HA, sex = Sex,
         age_group = Age_Group, evidence = Classification_Reported) %>%
  write_csv("data/covid19_cases_bc.csv") %>%
  type_convert()


# PanNETs Gene Expression Dataset -----------------------------------------

# Homepage:
# https://www.nature.com/articles/s41467-018-06498-2

# Download RNA-seq gene expression data
pannets_expr_rnaseq <-
  paste0("https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE118014&",
         "format=file&file=GSE118014_PanNETs_log2TPM_33_RSEM_STAR_",
         "Process_Samples.txt.gz") %>%
  read_tsv(col_types = cols()) %>%
  rename_with(toupper) %>%
  rename(Gene = GENE_ID)

# Download microarray gene expression data
pannets_expr_array <-
  paste0("https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE117851&",
         "format=file&file=GSE117851_Matrix_Gene_Expression_Collapsed_",
         "47_PanNETs_average.txt.gz") %>%
  read_tsv(col_types = cols()) %>%
  rename_with(toupper) %>%
  rename(Gene = X1) %>%
  select(Gene, one_of(colnames(pannets_expr_rnaseq)))

# Function for downloading and loading Excel supplemental data
download_supp_data <- function (link, ...) {
  temp <- tempfile()
  download.file(link, destfile = temp, quiet = TRUE)
  result <- read_excel(temp, na = c("", "none"), ...)
  unlink(temp)
  result
}

# Download clinical metadata
pannets_clinical <-
  paste0("https://static-content.springer.com/esm/art%3A10.1038%2Fs41467-018",
         "-06498-2/MediaObjects/41467_2018_6498_MOESM4_ESM.xlsx") %>%
  download_supp_data() %>%
  transmute(Tumour = toupper(`Our ID`),
            Age, Sex = Gender,
            Genotype = Genotype...6,
            Metastasis = recode(`distant metastasis`,
                                "Y" = TRUE, "N" = FALSE),
            Subtype = ifelse(is.na(Genotype),
                             "A-D-M WT", "A-D-M Mutant")) %>%
  separate_rows(Genotype, sep = ", ") %>%
  pivot_wider(names_from = Genotype, values_from = Genotype,
              values_fn = list(Genotype = ~ TRUE),
              values_fill = list(Genotype = FALSE)) %>%
  rename_with(~ paste0(., "_mutant"), c(ATRX, DAXX, MEN1)) %>%
  select(-`NA`)

# Download ESTIMATE output
pannets_estimate <-
  paste0("https://static-content.springer.com/esm/art%3A10.1038%2Fs41467-018",
         "-06498-2/MediaObjects/41467_2018_6498_MOESM6_ESM.xlsx") %>%
  download_supp_data(skip = 2) %>%
  transmute(Tumour = toupper(Description),
            Immune_score = round(ImmuneScore),
            Tumour_purity = round(`Tumor Purity`) / 100)

# Obtain RNA-seq and microarray gene expression for A-D-M genes
pannets_expr_adm <-
bind_rows(rnaseq = pannets_expr_rnaseq, array = pannets_expr_array,
          .id = "Method") %>%
  filter(Gene %in% c("ATRX", "DAXX", "MEN1")) %>%
  pivot_longer(cols = -c(Method, Gene), names_to = "Tumour",
               values_to = "Expr") %>%
  pivot_wider(id_cols = Tumour, names_from = c(Gene, Method),
              names_sep = "_", values_from = Expr)

# Merge all metadata and data together
pannets_metadata <-
  pannets_clinical %>%
  left_join(pannets_estimate, by = "Tumour") %>%
  left_join(pannets_expr_adm, by = "Tumour") %>%
  relocate(Tumour_purity, Immune_score, .after = Metastasis)

# Output data and metadata
write_csv(pannets_expr_rnaseq, "data/pannets_expr_rnaseq.csv.gz")
write_csv(pannets_expr_array, "data/pannets_expr_array.csv.gz")
write_csv(pannets_metadata, "data/pannets_metadata.csv")
