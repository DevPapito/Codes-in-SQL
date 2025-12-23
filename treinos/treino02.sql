
-- 1
SELECT first_name, last_name FROM sales.customers
WHERE state = 'SP' and score > 600;

-- 2

SELECT first_name, last_name, birth_date FROM sales.customers
ORDER BY birth_date desc
LIMIT 5;

-- 3

SELECT DISTINCT city FROM sales.customers -- usar o distinct quando for algo seleto
ORDER BY score desc
LIMIT 3;

-- 4

SELECT * FROM sales.products
WHERE price >= 30000 AND price <= 80000;

-- 5

SELECT * FROM sales.products
ORDER BY model_year asc
LIMIT 10;

-- 6

SELECT visit_id FROM sales.funnel
WHERE paid_date IS NOT NULL AND paid_date > '2023-01-01';

-- 7

SELECT * FROM sales.funnel
ORDER BY visit_page_date asc
LIMIT 5;

-- 8

SELECT * FROM sales.customers
WHERE score is null;

-- 9

SELECT * FROM sales.products
WHERE brand ILIKE 'f%';

-- 10

SELECT * FROM sales.customers
WHERE state = 'MG'
ORDER BY score desc
LIMIT 5;
