CREATE TABLE "States" (
    "A1" int   NOT NULL,
    "X1" int   NOT NULL,
    "date" date   NOT NULL,
    "country" varchar(2)   NOT NULL,
    "state" varchar(2)   NOT NULL,
    "fips" int   NOT NULL,
    "locationID" varchar(18)   NOT NULL,
    "actuals.cases" int   NOT NULL,
    "actuals.deaths" int   NOT NULL,
    "actuals.positiveTests" int   NOT NULL,
    "actuals.negativeTests" int   NOT NULL,
    "actuals.contactTracers" int   NOT NULL,
    "actuals.hospitalBeds.capacity" int   NOT NULL,
    "actuals.hospitalBeds.currentUsageTotal" int   NOT NULL,
    "actuals.hospitalBeds.currentUsageCovid" int   NOT NULL,
    "actuals.icuBeds.capacity" int   NOT NULL,
    "actuals.icuBeds.currentUsageTotal" int   NOT NULL,
    "actuals.icuBeds.currentUsageCovid" int   NOT NULL,
    "actuals.newCases" int   NOT NULL,
    "actuals.vaccinesDistributed" int   NOT NULL,
    "actuals.vaccinationsInitiated" int   NOT NULL,
    "actuals.vaccinationsCompleted" int   NOT NULL,
    "actuals.newDeaths" int   NOT NULL,
    "actuals.vaccinesAdministered" int   NOT NULL,
    "actuals.vaccinationsAdditionalDose" int   NOT NULL,
    "actuals.hospitalBeds.weeklyCovidAdmissions" int   NOT NULL,
    CONSTRAINT "pk_States" PRIMARY KEY (
        "A1"
     )
);

SELECT * FROM "States";