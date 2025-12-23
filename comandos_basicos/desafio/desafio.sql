-- EXERCÍCIOS ######################################################################

-- (Exercício 1) Selecione os nomes de cidade distintas que existem no estado de
-- Minas Gerais em ordem alfabética (dados da tabela sales.customers)
SELECT DISTINCT first_name, last_name FROM sales.customers
ORDER BY first_name
LIMIT 100; -- falta de atencao

SELECT DISTINCT city FROM sales.customers
WHERE state = 'MG'
ORDER BY city;

-- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)
SELECT visit_id,visit_page_date FROM sales.funnel
WHERE  paid_date IS NOT NULL -- parametro de construcao de tabela
ORDER BY paid_date desc
LIMIT 10;

-- (Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)

SELECT * FROM sales.customers
WHERE birth_date > '2000-01-02'
ORDER BY score desc
LIMIT 10;





-- REPOSTAS DA PROF


-- EXERCÍCIOS ######################################################################

-- (Exercício 1) Selecione os nomes de cidade distintas que existem no estado de
-- Minas Gerais em ordem alfabética (dados da tabela sales.customers)

select distinct city
from sales.customers
where state = 'MG'
order by city


-- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)

select visit_id
from sales.funnel
where paid_date is not null
order by paid_date desc
limit 10

-- (Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)

select *
from sales.customers
where birth_date >= '2000-01-01'
order by score desc
limit 10









































