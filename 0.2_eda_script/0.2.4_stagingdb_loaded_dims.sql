-- =====================================
-- LOAD DIM_LOCATION
-- =====================================

INSERT INTO dim_location (
    continent,
    country,
    city
)
SELECT DISTINCT
    TRIM(rs."Continent"),
    TRIM(rs."Country"),
    TRIM(rs."City")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_STORE
-- =====================================

INSERT INTO dim_store (
    store_bk,
    store_name,
    store_type
)
SELECT DISTINCT
    TRIM(rs."Store ID"),
    TRIM(rs."Store Name"),
    TRIM(rs."Store Type")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_SALES
-- =====================================

INSERT INTO dim_sales (
    salesperson_bk,
    salesperson_department
)
SELECT DISTINCT
    TRIM(rs."Salesperson ID"),
    TRIM(rs."Salesperson Department")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_PROMOTION
-- =====================================

INSERT INTO dim_promotion (
    promotion_bk,
    promotion_name
)
SELECT DISTINCT
    TRIM(rs."Promotion ID"),
    TRIM(rs."Promotion Name")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_PRODUCT
-- =====================================

INSERT INTO dim_product (
    product_bk,
    product_name,
    sku
)
SELECT DISTINCT
    TRIM(rs."Product ID"),
    TRIM(rs."Product Name"),
    TRIM(rs."SKU")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_CATEGORY
-- =====================================

INSERT INTO dim_category (
    category,
    subcategory,
    brand
)
SELECT DISTINCT
    TRIM(rs."Category"),
    TRIM(rs."Subcategory"),
    TRIM(rs."Brand")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_CUSTOMER
-- =====================================

INSERT INTO dim_customer (
    customer_segment,
    loyalty_tier
)
SELECT DISTINCT
    TRIM(rs."Customer Segment"),
    TRIM(rs."Loyalty Tier")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_PAYMENT
-- =====================================

INSERT INTO dim_payment (
    payment_method
)
SELECT DISTINCT
    TRIM(rs."Payment Method")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_PRIORITY
-- =====================================

INSERT INTO dim_priority (
    priority
)
SELECT DISTINCT
    TRIM(rs."Priority")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_CHANNEL
-- =====================================

INSERT INTO dim_channel (
    channel
)
SELECT DISTINCT
    TRIM(rs."Channel")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_RETURNS
-- =====================================

INSERT INTO dim_returns (
    returned
)
SELECT DISTINCT
    TRIM(rs."Returned")
FROM public.retail_sales rs;


-- =====================================
-- LOAD DIM_DATE
-- =====================================
-- TROUBLESHOOTING ERRORS HAD TO USE AI
-- BECAUSE OF THE DATE FORMAT

SELECT
    "Purchase Date",
    "Ship Date",
    "Return Date"
FROM public.retail_sales
LIMIT 20;


INSERT INTO dim_date (
    purchase_date,
    ship_date,
    return_date
)
SELECT DISTINCT
    CAST(NULLIF(TRIM("Purchase Date"), '') AS DATE),
    CAST(NULLIF(TRIM("Ship Date"), '') AS DATE),
    CAST(NULLIF(TRIM("Return Date"), '') AS DATE)
FROM public.retail_sales;