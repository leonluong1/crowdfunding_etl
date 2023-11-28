﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/R6eiy7
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Category (
    "category_id" VARCHAR(8)   NOT NULL,
    "category" VARCHAR(64)   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE Subcategory (
    "subcategory_id" VARCHAR(8)   NOT NULL,
    "subcategory" VARCHAR(64)   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        "subcategory_id","subcategory"
     )
);

CREATE TABLE Contacts (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(64)   NOT NULL,
    "last_name" VARCHAR(64)   NOT NULL,
    "email" VARCHAR(64)   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE Campaign (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(64)   NOT NULL,
    "description" VARCHAR(64)   NOT NULL,
    "goal" NUMERIC(10,2)   NOT NULL,
    "pledged" NUMERIC(10,2)   NOT NULL,
    "outcome" VARCHAR(16)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(16)   NOT NULL,
    "currency" VARCHAR(8)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(8)   NOT NULL,
    "subcategory_id" VARCHAR(8)   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY("contact_id")
REFERENCES Contacts ("contact_id");

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id FOREIGN KEY("category_id")
REFERENCES Category ("category_id");

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY("subcategory_id")
REFERENCES Subcategory ("subcategory_id");
