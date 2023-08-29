-- Drop tables if they exist

drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- Create contacts table
CREATE TABLE contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    email VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

-- Create category table
CREATE TABLE category (
    category_id VARCHAR(50)   NOT NULL,
    category VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

--Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50)   NOT NULL,
    subcategory VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

--Create campaign table
CREATE TABLE campaign (
    cf_id INTEGER   NOT NULL,
    contact_id INTEGER   NOT NULL,
    company VARCHAR(50)   NOT NULL,
    description VARCHAR(250)   NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome VARCHAR(50)   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR(50)   NOT NULL,
    currency VARCHAR(50)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(50)   NOT NULL,
    subcategory_id VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

select * from contacts
select * from category
select * from subcategory
select * from campaign