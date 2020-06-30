
# Load packages -----------------------------------------------------------

library(tidyverse)
library(lubridate)


# COVID-19 Cases and Deaths -----------------------------------------------

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
  write_csv("data/covid19_cases_worldwide.csv")


covid19_cases_worldwide_monthly <-
  covid19_cases_worldwide %>%
  mutate(month = month(month, label = TRUE)) %>%
  group_by(year, month, territory, continent) %>%
  summarize(across(c(cases, deaths), sum), across(population, mean),
            .groups = "drop") %>%
  write_csv("data/covid19_cases_worldwide_monthly.csv")


covid19_cases_canada_monthly <-
  covid19_cases_worldwide_monthly %>%
  filter(territory == "Canada") %>%
  select(-continent, -population) %>%
  write_csv("data/covid19_cases_canada_monthly.csv")


# E-MTAB-6701 - human first trimester fetal-maternal interface single cell transcriptomics - 10x data ----------------------

### will take a few minutes
download.file(url = "https://www.ebi.ac.uk/arrayexpress/files/E-MTAB-6701/E-MTAB-6701.processed.1.zip", destfile = "data/fetal_transcriptomics_raw.zip")
unzip(zipfile = "data/fetal_transcriptomics_raw.zip", exdir="data/")
data <- read.table("data/raw_data_10x.txt")
download.file(url = "https://www.ebi.ac.uk/arrayexpress/files/E-MTAB-6701/E-MTAB-6701.processed.2.zip", destfile = "data/fetal_transcriptomics_meta.zip")
unzip(zipfile = "data/fetal_transcriptomics_meta.zip", exdir="data/")
meta <- read.table("data/meta_10x.txt")





