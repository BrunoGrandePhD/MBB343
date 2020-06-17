
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
            population = popData2018, cases, deaths) %>%
  filter(!territory %in% nonterritories,
         year >= 2020)

write_csv(covid19_cases_worldwide, "data/covid19_cases_worldwide.csv")


covid19_cases_worldwide_weekly <-
  covid19_cases_worldwide %>%
  mutate(week = week(date)) %>%
  group_by(year, week, territory, continent) %>%
  summarize(across(c(cases, deaths), sum), across(population, mean),
            .groups = "drop")

write_csv(covid19_cases_worldwide_weekly,
          "data/covid19_cases_worldwide_weekly.csv")


covid19_cases_canada_monthly <-
  covid19_cases_worldwide %>%
  filter(territory == "Canada") %>%
  mutate(month = month(month, label = TRUE)) %>%
  group_by(year, month, territory) %>%
  summarize(across(c(cases, deaths), sum), .groups = "drop")

write_csv(covid19_cases_canada_monthly,
          "data/covid19_cases_canada_monthly.csv")
