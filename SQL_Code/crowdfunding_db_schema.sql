-- Made with help from QuickDBD: https://www.quickdatabasediagrams.com/
-- 1) Create database "crowdfunding_db" using pgAdmin program.

-- 2) Tables are to be created in this order

CREATE TABLE "category" (
    "category_id" VARCHAR  PRIMARY KEY  NOT NULL,
    "category" VARCHAR   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR  PRIMARY KEY   NOT NULL,
    "subcategory" VARCHAR   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int  PRIMARY KEY  NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL
);

CREATE TABLE campaign (
    cf_id INT  PRIMARY KEY   NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR  NOT NULL,
    description VARCHAR  NOT NULL,
    goal FLOAT  NOT NULL,
    pledged FLOAT   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR  NOT NULL,
    currency VARCHAR  NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id VARCHAR  NOT NULL,
    subcategory_id VARCHAR  NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- 3) Use pgAdmin to import the .csv files into their respective tables

-- 4) View tables to check they're made and to verify data import
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;