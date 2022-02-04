-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/EAfM8Z
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "EV_STATIONS" (
    "Station_Name" varchar   NOT NULL,
    "Street_Address" varchar   NOT NULL,
    "City" varchar   NOT NULL,
    "State_Code" varchar   NOT NULL,
    "Zip_Code" int   NOT NULL,
    "Status_Code" varchar   NOT NULL,
    "Access_Days_Time" varchar   NOT NULL,
    "EV_Level1_EVSE_Num" int   NOT NULL,
    "EV_Level2_EVSE_Num" int   NOT NULL,
    "EV_DC_Fast_Count" int   NOT NULL,
    "EV_Network" varchar   NOT NULL,
    "Latitude" int   NOT NULL,
    "Longitude" int   NOT NULL,
    "EV_ID" int   NOT NULL,
    "Owner_Type_Code" varchar   NOT NULL,
    "Open_Date" date   NOT NULL,
    "Access_Code" varchar   NOT NULL,
    "Facility_Type" varchar   NOT NULL,
    "Charging_Cost" varchar   NOT NULL,
    CONSTRAINT "pk_EV_STATIONS" PRIMARY KEY (
        "Station_Name","Latitude","Longitude","EV_ID"
     )
);

CREATE TABLE "EV_REGISTRATION" (
    "DMV_ID" int   NOT NULL,
    "DMV_Snapshot_Date" varchar   NOT NULL,
    "Zip_code" int   NOT NULL,
    "VIN_Prefix" varchar   NOT NULL,
    "Registration_Valid_Date" date   NOT NULL,
    "EV_Make" varchar   NOT NULL,
    "EV_Model" varchar   NOT NULL,
    "EV_Model_Year" int   NOT NULL,
    CONSTRAINT "pk_EV_REGISTRATION" PRIMARY KEY (
        "Zip_code","VIN_Prefix"
     )
);

CREATE TABLE "EV_SALES_2019" (
    "State_Code" varchar   NOT NULL,
    "State_Name" varchar   NOT NULL,
    "EV_Sales_Count" int   NOT NULL,
    "EV_Market_Share" varchar   NOT NULL,
    CONSTRAINT "pk_EV_SALES_2019" PRIMARY KEY (
        "State_Code"
     )
);

CREATE TABLE "ZIP_CODE_REFERENCE" (
    "Zip_Code" int   NOT NULL,
    "County_Name" varchar   NOT NULL,
    "State_Code" varchar   NOT NULL,
    CONSTRAINT "pk_ZIP_CODE_REFERENCE" PRIMARY KEY (
        "Zip_Code"
     )
);

ALTER TABLE "EV_STATIONS" ADD CONSTRAINT "fk_EV_STATIONS_State_Code" FOREIGN KEY("State_Code")
REFERENCES "EV_SALES_2019" ("State_Code");

ALTER TABLE "EV_STATIONS" ADD CONSTRAINT "fk_EV_STATIONS_Zip_Code" FOREIGN KEY("Zip_Code")
REFERENCES "ZIP_CODE_REFERENCE" ("Zip_Code");

ALTER TABLE "EV_REGISTRATION" ADD CONSTRAINT "fk_EV_REGISTRATION_Zip_code" FOREIGN KEY("Zip_code")
REFERENCES "ZIP_CODE_REFERENCE" ("Zip_Code");

