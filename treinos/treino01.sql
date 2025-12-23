--- 25 DESAFIOS CHAT GPT

-- 1

SELECT * FROM sales.customers;

-- 2

SELECT first_name, last_name, state FROM sales.customers;

-- 3

SELECT * FROM  sales.products;

-- 4

SELECT brand, model FROM sales.products;

-- 5

SELECT * FROM sales.customers
WHERE state = 'MG';

-- 6

SELECT * FROM sales.customers
WHERE not state = 'SP';

-- Melhor mais profissa

SELECT * FROM sales.customers
WHERE state <> 'SP';

-- 7

SELECT * FROM sales.customers
WHERE birth_date < '1990-01-01';

-- 8

SELECT * FROM sales.customers
WHERE score > 500;

-- 9

SELECT * FROM sales.products
WHERE price > 50000; -- em formato numerico nao divide por ponto deixa como em long/int

-- 10

SELECT * FROM sales.products
WHERE model_year = '2023';

-- 11

SELECT * FROM sales.customers
ORDER BY first_name;

-- 12

SELECT * FROM sales.products
ORDER BY price;

-- 13

SELECT * FROM sales.customers
ORDER BY score desc;

-- 14

SELECT * FROM sales.products
ORDER BY model_year desc;

-- 15

SELECT DISTINCT state FROM sales.customers;

-- 16

SELECT * FROM sales.customers
LIMIT 5;

-- 17

SELECT * FROM sales.products
ORDER BY price desc
LIMIT 3;

-- 18

SELECT * FROM sales.funnel
ORDER BY visit_page_date desc
LIMIT 10;

-- 19

SELECT visit_id FROM sales.funnel
WHERE paid_date IS NOT NULL;

-- 20

SELECT * FROM sales.funnel
ORDER BY visit_page_date;

-- 21

SELECT DISTINCT * FROM sales.customers -- distincit nao funciona com *
WHERE state = 'RJ';

SELECT DISTINCT city FROM sales.customers
WHERE state = 'RJ';

-- 22

SELECT * FROM sales.customers
WHERE birth_date > '2001-01-01'; -- apos 2000 nao apos 2000/janeiro/dia

SELECT * FROM sales.customers
WHERE birth_date > '2000-01-01';

-- 23

SELECT * FROM sales.products
WHERE brand = 'TOYOTA'; -- ao invez de model, brand

-- 24

-- Querys duplas ERRADA
SELECT * FROM sales.customers
ORDER BY state;

SELECT * FROM sales.customers
ORDER BY first_name;

-- Melhor mais profissa

SELECT * FROM sales.customers
ORDER BY state, first_name;

-- 25

SELECT * FROM sales.customers
ORDER BY score asc -- melhor sempre deixar declarado CONVERNÇÃO
LIMIT 10;
