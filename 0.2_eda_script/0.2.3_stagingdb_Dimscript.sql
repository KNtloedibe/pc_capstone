
--- =====================================
-- DIM_DATE
-- =====================================
CREATE TABLE dim_date (
    date_id SERIAL PRIMARY KEY,
    purchase_date DATE,
    ship_date DATE,
    return_date DATE
);

-- =====================================
-- DIM_LOCATION
-- =====================================
CREATE TABLE dim_location (
    location_id SERIAL PRIMARY KEY,
    continent VARCHAR(100),
    country VARCHAR(100),
    city VARCHAR(100)
);

-- =====================================
-- DIM_STORE
-- =====================================
CREATE TABLE dim_store (
    store_id SERIAL PRIMARY KEY,
    store_bk VARCHAR(50),
    store_name VARCHAR(255),
    store_type VARCHAR(100)
);

-- =====================================
-- DIM_SALES
-- =====================================
CREATE TABLE dim_sales (
    sales_id SERIAL PRIMARY KEY,
    salesperson_bk VARCHAR(50),
    salesperson_department VARCHAR(100)
);

-- =====================================
-- DIM_PROMOTION
-- =====================================
CREATE TABLE dim_promotion (
    promotion_id SERIAL PRIMARY KEY,
    promotion_bk VARCHAR(50),
    promotion_name VARCHAR(255)
);

-- =====================================
-- DIM_PRODUCT
-- =====================================
CREATE TABLE dim_product (
    product_id SERIAL PRIMARY KEY,
    product_bk VARCHAR(50),
    product_name VARCHAR(255),
    sku VARCHAR(100)
);

-- =====================================
-- DIM_CATEGORY
-- =====================================
CREATE TABLE dim_category (
    category_id SERIAL PRIMARY KEY,
    category VARCHAR(100),
    subcategory VARCHAR(100),
    brand VARCHAR(100)
);

-- =====================================
-- DIM_CUSTOMER
-- =====================================
CREATE TABLE dim_customer (
    customer_id SERIAL PRIMARY KEY,
    customer_segment VARCHAR(100),
    loyalty_tier VARCHAR(100)
);

-- =====================================
-- DIM_PAYMENT
-- =====================================
CREATE TABLE dim_payment (
    payment_id SERIAL PRIMARY KEY,
    payment_method VARCHAR(100)
);

-- =====================================
-- DIM_PRIORITY
-- =====================================
CREATE TABLE dim_priority (
    priority_id SERIAL PRIMARY KEY,
    priority VARCHAR(100)
);

-- =====================================
-- DIM_CHANNEL
-- =====================================
CREATE TABLE dim_channel (
    channel_id SERIAL PRIMARY KEY,
    channel VARCHAR(100)
);

-- =====================================
-- DIM_RETURNS
-- =====================================
CREATE TABLE dim_returns (
    returns_id SERIAL PRIMARY KEY,
    returned VARCHAR(20)
);

-- =====================================
-- FACT_SALES
-- =====================================
CREATE TABLE fact_sales (
    fact_id SERIAL PRIMARY KEY,

    date_id INT,
    location_id INT,
    store_id INT,
    sales_id INT,
    promotion_id INT,
    product_id INT,
    category_id INT,
    customer_id INT,
    payment_id INT,
    priority_id INT,
    channel_id INT,
    returns_id INT,

    order_id VARCHAR(50),

    quantity INT,

    unit_cost NUMERIC(18,2),
    unit_price NUMERIC(18,2),
    discount_amount NUMERIC(18,2),
    tax_amount NUMERIC(18,2),
    shipping_cost NUMERIC(18,2),
    gross_sales NUMERIC(18,2),
    net_sales NUMERIC(18,2),
    cogs NUMERIC(18,2),
    gross_profit NUMERIC(18,2),
);