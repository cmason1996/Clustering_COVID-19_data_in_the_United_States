CREATE TABLE "States" (
    "date" object   NOT NULL,
    "country" object   NOT NULL,
    "state" object   NOT NULL,
    "fips" int64   NOT NULL,
    "locationId" object   NOT NULL,
    "actuals.cases" float64   NOT NULL,
    "actuals.deaths" float64   NOT NULL,
    "actuals.positiveTests" float64   NOT NULL,
    "actuals.negativeTests" float64   NOT NULL,
    "actuals.contactTracers" float64   NOT NULL,
    "actuals.hospitalBeds.capacity" float64   NOT NULL,
    "actuals.hospitalBeds.currentUsageTotal" float64   NOT NULL,
    "actuals.hospitalBeds.currentUsageCovid" float64   NOT NULL,
    "actuals.icuBeds.capacity" float64   NOT NULL,
    "actuals.icuBeds.currentUsageTotal" float64   NOT NULL,
    "actuals.icuBeds.currentUsageCovid" float64   NOT NULL,
    "actuals.newCases" float64   NOT NULL,
    "actuals.vaccinesDistributed" float64   NOT NULL,
    "actuals.vaccinationsInitiated" float64   NOT NULL,
    "actuals.vaccinationsCompleted" float64   NOT NULL,
    "actuals.newDeaths" float64   NOT NULL,
    "actuals.vaccinesAdministered" float64   NOT NULL,
    "actuals.vaccinationsAdditionalDose" float64   NOT NULL,
    "actuals.hospitalBeds.weeklyCovidAdmissions" float64   NOT NULL,
    CONSTRAINT "pk_States" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Counties" (
    "date" object   NOT NULL,
    "state" object   NOT NULL,
    "county" object   NOT NULL,
    "fips" int64   NOT NULL,
    "locationId" object   NOT NULL,
    "actuals.cases" float64   NOT NULL,
    "actuals.deaths" float64   NOT NULL,
    "actuals.hospitalBeds.capacity" float64   NOT NULL,
    "actuals.hospitalBeds.currentUsageTotal" float64   NOT NULL,
    "actuals.hospitalBeds.currentUsageCovid" float64   NOT NULL,
    "actuals.icuBeds.capacity" float64   NOT NULL,
    "actuals.icuBeds.currentUsageTotal" float64   NOT NULL,
    "actuals.icuBeds.currentUsageCovid" float64   NOT NULL,
    "actuals.newCases" float64   NOT NULL,
    "actuals.vaccinationsInitiated" float64   NOT NULL,
    "actuals.vaccinationsCompleted" float64   NOT NULL,
    "actuals.newDeaths" float64   NOT NULL,
    "cdcTransmissionLevel" int64   NOT NULL,
    "actuals.vaccinationsAdditionalDose" float64   NOT NULL,
    "actuals.hsaHospitalBeds.capacity" float64   NOT NULL,
    "actuals.hsaHospitalBeds.currentUsageTotal" float64   NOT NULL,
    "actuals.hsaHospitalBeds.currentUsageCovid" float64   NOT NULL,
    "actuals.hsaIcuBeds.capacity" float64   NOT NULL,
    "actuals.hsaIcuBeds.currentUsageTotal" float64   NOT NULL,
    "actuals.hsaIcuBeds.currentUsageCovid" float64   NOT NULL,
    "actuals.hospitalBeds.weeklyCovidAdmissions" float64   NOT NULL,
    "actuals.hsaHospitalBeds.weeklyCovidAdmissions" float64   NOT NULL,
    CONSTRAINT "pk_Counties" PRIMARY KEY (
        "county"
     )
);

ALTER TABLE "States" ADD CONSTRAINT "fk_States_date" FOREIGN KEY("date")
REFERENCES "Counties" ("date");

ALTER TABLE "Counties" ADD CONSTRAINT "fk_Counties_date" FOREIGN KEY("date")
REFERENCES "Counties" ("date");

