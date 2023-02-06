# Load libraries
library(tidyverse)
library(readr)
library(dlpyr)
library(tidyr)

# Read in CSV and export to a DF
states = read.csv('states.timeseries.csv', sep=',', header=FALSE, encoding='utf-8')
print(states)

# Check DF
head(states)
View(states)

# Check data types
str(states)

# Drop missing values
states %>% drop_na()

# Check that sum of missing valuesis zero
sum(is.na(states))

# Save DF to CSV
write.csv(states, "states2.csv")

states2 = read.csv('states2.csv', sep=',', encoding ='utf-8')
head(states2)

# Drop columns 
states3 = subset(states2, select = -c(county,lat,long,unused1,unused2,metrics.testPositivityRatioDetails,
                   unused3,unused4,hsa,hsaPopulation,actuals.hsaHospitalBeds.capacity, 
                   actuals.hsaHospitalBeds.currentUsageTotal,actuals.hsaHospitalBeds.currentUsageCovid, 
                   actuals.hsaIcuBeds.capacity,actuals.hsaIcuBeds.currentUsageTotal, 
                   actuals.hsaIcuBeds.currentUsageCovid,hsaName, 
                   actuals.hsaHospitalBeds.weeklyCovidAdmissions, 
                   communityLevels.cdcCommunityLevel, actuals.vaccinationsFall2022BivalentBooster, 
                   metrics.vaccinationsFall2022BivalentBoosterRatio, metrics.testPositivityRatio,metrics.caseDensity, 
                   metrics.contactTracerCapacityRatio,metrics.infectionRate, metrics.infectionRateCI90,
                   metrics.icuCapacityRatio,riskLevels.overall,metrics.vaccinationsInitiatedRatio, 
                   metrics.vaccinationsCompletedRatio,riskLevels.caseDensity,cdcTransmissionLevel,
                   metrics.vaccinationsAdditionalDoseRatio,metrics.weeklyNewCasesPer100k,metrics.bedsWithCovidPatientsRatio, 
                   metrics.weeklyCovidAdmissionsPer100k,communityLevels.canCommunityLevel))

View(states3)

states4 <- states3 %>% drop_na()
View(states4)

#Save as a CSV
write.csv(states4, "cleaned_states.csv")
