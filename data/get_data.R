
# Load packages -----------------------------------------------------------

library(data.table)
library(tidyverse)
library(lubridate)


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
         deaths = deathstoday, recovered = recoveredtoday,
         tested = testedtoday) %>%
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


# ACE2 expression in fetal organs using scRNA-seq -------------------------

# Homepage:
# https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0230295

fetal_scrnaseq_rooturl <-
  "https://www.ebi.ac.uk/arrayexpress/files/E-MTAB-6701/"

fetal_metadata_url <-
  paste0(fetal_scrnaseq_rooturl, "E-MTAB-6701.processed.2.zip")
download.file(url = fetal_metadata_url,
              destfile = "data/large/6701.processed.2.zip")
unzip(zipfile = "data/large/6701.processed.2.zip", exdir="data/large/")

fetal_scrnaseq_url <-
  paste0(fetal_scrnaseq_rooturl, "E-MTAB-6701.processed.1.zip")
download.file(url = fetal_scrnaseq_url,
              destfile = "data/large/E-MTAB-6701.processed.1.zip")
unzip(zipfile = "data/large/E-MTAB-6701.processed.1.zip", exdir="data/large/")

fetal_metadata <-
  read.delim("data/large/meta_10x.txt", stringsAsFactors = FALSE) %>%
  rownames_to_column("cell") %>%
  as_tibble() %>%
  rename(fetus = Fetus)

fetal_scrnaseq <-
  fread("data/large/raw_data_10x.txt") %>%
  column_to_rownames("Gene") %>%
  as.matrix()
