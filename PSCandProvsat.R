library(tidyverse)
psc<- (read.csv("C:/Users/Owner/Dropbox (個人)/UgandaPS/06 Assessments/067 Endline report/3Original data (Staff)/(Work0)PSC20260312.csv"))
class(psc)
psc24 <- read_csv("C:/Users/Owner/Dropbox (個人)/UgandaPS/06 Assessments/067 Endline report/3Original data (Staff)/(Work0)PSC20260312.csv") %>%
  filter(HID %in% c(2,4)) %>%
  mutate(across(starts_with("Q"),
                ~as.numeric(trimws(.)))) %>%
  mutate(across(starts_with("Q"),
                ~na_if(., 9)))

provsat24 <- read_csv("C:/Users/Owner/Dropbox (個人)/UgandaPS/06 Assessments/067 Endline report/3Original data (Staff)/(Work0)ProvSat20260312.csv") %>%
  filter(HID %in% c(2,4)) %>%
  mutate(across(starts_with("Q"),
                ~as.numeric(trimws(.)))) %>%
  mutate(across(starts_with("Q"),
                ~na_if(., 9)))

summary(psc24)
summary(provsat24)