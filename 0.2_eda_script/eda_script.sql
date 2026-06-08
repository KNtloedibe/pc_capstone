--dim_date
select distinct "Purchase Date", "Ship Date","Return Date"
from public.retail_sales

--dim_location
select distinct "Continent" , "Country", "City"
from public.retail_sales

--dim_store
select distinct "Store ID", "Store Name","Store Type"
from public.retail_sales

--dim_sales
select distinct "Salesperson Department", "Salesperson ID"
from public.retail_sales

--dim_payment
select distinct "Payment Method"
from public.retail_sales rs 

--dim_channel
select distinct "Channel"
from public.retail_sales rs 

--dim_promotion
select distinct "Promotion ID", "Promotion Name"
from public.retail_sales rs 

--dim_product
select distinct "Product Name", "Product ID", "SKU"
from public.retail_sales rs 

--dim_category
select distinct "Category", "Subcategory", "Brand"
from public.retail_sales rs 

--dim_customer
select distinct "Customer Segment", "Loyalty Tier"
from public.retail_sales rs 

--dim_priority
select distinct "Priority"
from public.retail_sales rs 

--dim_returns
select distinct "Returned"
from public.retail_sales rs 


--dim_date

CREATE TABLE dim_date (
    date_id int PRIMARY KEY,
    purchase_date DATE,
    ship_date DATE,
    return_date DATE
);


--dim_table

CREATE TABLE dim_location (
    location_id int PRIMARY KEY,
    continent VARCHAR(100),
    country VARCHAR(100),
    city VARCHAR(100)
);


--dim_store

CREATE TABLE dim_store (
    store_id int PRIMARY KEY,
    store_code VARCHAR(50),
    store_name VARCHAR(255),
    store_type VARCHAR(100)
);


--dim_sales

CREATE TABLE dim_sales (
    sales_id int PRIMARY KEY,
    salesperson_department VARCHAR(100),
    salesperson_code VARCHAR(50)
);


--dim_promotion

CREATE TABLE dim_promotion (
    promotion_id int PRIMARY KEY,
    promotion_code VARCHAR(50),
    promotion_name VARCHAR(255)
);


--dim_product

CREATE TABLE dim_product (
    product_id int PRIMARY KEY,
    product_name VARCHAR(255),
    product_code VARCHAR(50),
    sku VARCHAR(100)
);


--dim_category

CREATE TABLE dim_category (
    category_id int PRIMARY KEY,
    category VARCHAR(100),
    subcategory VARCHAR(100),
    brand VARCHAR(100)
);


--dim_customer

create table dim_customer(
customer_id int primary key,
customer_segment varchar(100),
loyalty_tier varchar(100)
);


--dim_payment

create table dim_payment(
payment_id int primary key,
payment_method varchar(100)
);


--dim_priority

create table dim_priority (
priority_id int primary key,
priority varchar(100)
);


--dim_channel

create table dim_channel (
channel_id int primary key,
channel varchar(100)
);


--dim_returns

create table dim_returns (
returns_id int primary key,
returned varchar(100)
);



