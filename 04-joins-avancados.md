# 🔗 JOINs Avançados no SQL

Os JOINs permitem **combinar dados de duas ou mais tabelas** com base em uma coluna relacionada (como uma chave estrangeira). Eles são fundamentais para relacionar informações em bancos de dados relacionais.

---

## 📘 1. INNER JOIN

Retorna **apenas os registros que têm correspondência** em ambas as tabelas.

```sql
SELECT clientes.nome, pedidos.valor
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.id_cliente;
🧠 Interpretação: só traz os clientes que realmente fizeram pedidos.

📘 2. LEFT JOIN
Retorna todos os registros da tabela da esquerda, e os correspondentes da direita (se existirem).
Se não houver correspondência, os campos da direita vêm como NULL.

sql
Copiar
Editar
SELECT clientes.nome, pedidos.valor
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.id_cliente;
🧠 Interpretação: traz todos os clientes, inclusive os que nunca fizeram pedido.

📘 3. RIGHT JOIN
Retorna todos os registros da tabela da direita, com correspondentes da esquerda (se existirem).

sql
Copiar
Editar
SELECT clientes.nome, pedidos.valor
FROM clientes
RIGHT JOIN pedidos ON clientes.id = pedidos.id_cliente;
🧠 Interpretação: traz todos os pedidos, mesmo se não tiver cliente correspondente.

❗ Observação: RIGHT JOIN não é suportado em todos os bancos de dados, como MySQL antigo.

📘 4. FULL OUTER JOIN
Retorna todos os registros das duas tabelas, com NULL onde não houver correspondência.

sql
Copiar
Editar
SELECT clientes.nome, pedidos.valor
FROM clientes
FULL OUTER JOIN pedidos ON clientes.id = pedidos.id_cliente;
🧠 Interpretação: junta tudo de ambos os lados, mesmo sem relação direta.

❗ Nem todos os bancos suportam FULL OUTER JOIN (ex: MySQL). Em alguns casos, você pode simular com UNION entre LEFT JOIN e RIGHT JOIN.

🔍 Resumo visual
JOIN	O que retorna?
INNER JOIN	Apenas registros com correspondência
LEFT JOIN	Todos da esquerda + os correspondentes da direita
RIGHT JOIN	Todos da direita + os correspondentes da esquerda
FULL OUTER JOIN	Todos os registros de ambas as tabelas
