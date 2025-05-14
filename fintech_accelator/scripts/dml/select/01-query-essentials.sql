-- 1. Check total countries

 SELECT COUNT(*) AS total_countries
FROM fintech.countries;

-- 2. Count of all issuers that operates in New Zeland and USA

SELECT COUNT(country_code) AS total_issuers
FROM fintech.issuers 
WHERE country_code IN ('NZ','US');

-- 3. Get the clients that firs_name starts with A and end in o
-- only the first 5 records;

 SELECT *
FROM fintech.clients
WHERE first_name ILIKE 'A%o'
LIMIT 5;


-- 4. List the first 10 merchant_locations that in categories like
-- Corner, Gallery, Warehouse and Market. Also, exclude all countries
-- except Colombia.

SELECT *
FROM fintech.merchant_locations
WHERE category IN ('Corner', 'Gallery', 'Warehouse', 'Market')
  AND country_code = 'CO'
LIMIT 10;

-- 5. Count credit cards issued by this franquise '886287'alfa2024*

SELECT COUNT(*) AS total_cards
FROM fintech.credit_cards
WHERE franchise_id = '886287'; 