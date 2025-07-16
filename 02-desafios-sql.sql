-- 🧪 Exercícios de SQL – Desafios com base nas tabelas clientes e pedidos

-- 1. Liste todos os clientes
SELECT * FROM clientes;

-- 2. Liste apenas os nomes e cidades dos clientes
SELECT nome, cidade FROM clientes;

-- 3. Encontre todos os clientes que moram em São Paulo
SELECT * FROM clientes WHERE cidade = 'São Paulo';

-- 4. Encontre os clientes com idade maior que 28
SELECT * FROM clientes WHERE idade > 28;

-- 5. Liste todos os pedidos com valor acima de R$ 200
SELECT * FROM pedidos WHERE valor > 200;

-- 6. Mostre os pedidos do cliente "Ana Souza"
SELECT pedidos.* 
FROM pedidos 
JOIN clientes ON pedidos.id_cliente = clientes.id 
WHERE clientes.nome = 'Ana Souza';

-- 7. Calcule o total de pedidos por cliente
SELECT clientes.nome, SUM(pedidos.valor) AS total_pedidos
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id
GROUP BY clientes.nome;

-- 8. Mostre os clientes que fizeram mais de 1 pedido
SELECT clientes.nome, COUNT(pedidos.id) AS quantidade_pedidos
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id
GROUP BY clientes.nome
HAVING COUNT(pedidos.id) > 1;

-- 9. Liste os pedidos ordenados do maior para o menor valor
SELECT * FROM pedidos ORDER BY valor DESC;

-- 10. Liste os nomes dos clientes e a cidade, apenas dos que fizeram pedidos acima de R$ 300
SELECT DISTINCT clientes.nome, clientes.cidade
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id
WHERE pedidos.valor > 300;
