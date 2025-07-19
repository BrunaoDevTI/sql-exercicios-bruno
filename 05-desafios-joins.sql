- 1. Liste todos os clientes e seus pedidos, mesmo os que não fizeram pedido.
SELECT c.nome, p.valor
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente;

-- 2. Mostre apenas os clientes que NÃO fizeram nenhum pedido.
SELECT c.nome
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente
WHERE p.id IS NULL;

-- 3. Mostre o total de pedidos por cidade.
SELECT c.cidade, SUM(p.valor) AS total_pedidos
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id
GROUP BY c.cidade;

-- 4. Mostre a quantidade de pedidos por cliente.
SELECT c.nome, COUNT(p.id) AS quantidade_pedidos
FROM clientes c
LEFT JOIN pedidos p ON p.id_cliente = c.id
GROUP BY c.nome;

-- 5. Liste o nome dos clientes que têm mais de 1 pedido.
SELECT c.nome
FROM clientes c
JOIN pedidos p ON p.id_cliente = c.id
GROUP BY c.nome
HAVING COUNT(p.id) > 1;

-- 6. Mostre os nomes dos clientes que fizeram pedidos acima da média de valor.
SELECT DISTINCT c.nome
FROM clientes c
JOIN pedidos p ON p.id_cliente = c.id
WHERE p.valor > (
  SELECT AVG(valor) FROM pedidos
);

-- 7. Liste todas as combinações possíveis de cliente e pedido (mesmo que não façam sentido).
SELECT c.nome, p.valor
FROM clientes c
CROSS JOIN pedidos p;

-- 8. Mostre o nome e cidade de clientes que fizeram pedidos acima de R$ 300.
SELECT DISTINCT c.nome, c.cidade
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
WHERE p.valor > 300;
