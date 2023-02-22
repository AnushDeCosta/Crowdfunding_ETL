-- Drops existing tables if they exist
DROP TABLE IF EXISTS "campaign";
DROP TABLE IF EXISTS "contacts";
DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "subcategory";

-- Creates contacts table
CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(120)   NOT NULL,
    PRIMARY KEY ("contact_id")
);

-- Creates category table
CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    PRIMARY KEY ("category_id")
);

-- Creates subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL,
    PRIMARY KEY ("subcategory_id")
);

-- Creates campaign table
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" text   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(20)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(20)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    PRIMARY KEY ("cf_id"),
     FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id"),
     FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
     FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);

-- Tables populated using Import function in PostgreSQL

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign
