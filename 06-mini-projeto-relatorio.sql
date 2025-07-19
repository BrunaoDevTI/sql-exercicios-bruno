-- 🎯 Relatório 1: Total de faturamento por cidade
SELECT c.cidade, SUM(p.valor) AS total_faturado
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.cidade
ORDER BY total_faturado DESC;

-- 🎯 Relatório 2: Cliente que mais comprou
SELECT c.nome, SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 1;

-- 🎯 Relatório 3: Clientes que não fizeram nenhum pedido
SELECT c.nome
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente
WHERE p.id IS NULL;

-- 🎯 Relatório 4: Média de valor dos pedidos por cliente
SELECT c.nome, AVG(p.valor) AS media_pedido
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.nome;

-- 🎯 Relatório 5: Total de pedidos e valor médio por cidade
SELECT c.cidade,
       COUNT(p.id) AS total_pedidos,
       ROUND(AVG(p.valor), 2) AS media_valor
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.cidade
ORDER BY total_pedidos DESC;

-- 🎯 Relatório 6: Todos os clientes com seus pedidos (mesmo os que não compraram)
SELECT c.nome, p.valor
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente
ORDER BY c.nome;
