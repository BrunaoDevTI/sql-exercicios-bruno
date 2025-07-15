# Fundamentos de SQL

SQL (Structured Query Language) é a linguagem usada para consultar, inserir, atualizar e deletar dados em bancos de dados relacionais, como MySQL, PostgreSQL, SQL Server, entre outros.

**Comando SELECT:** usado para consultar dados de uma tabela.  
Exemplo: `SELECT nome FROM clientes;`

**Selecionar várias colunas:**  
`SELECT nome, idade, cidade FROM clientes;`

**Selecionar todos os campos:**  
`SELECT * FROM clientes;`

**Usando WHERE (filtros):**  
`SELECT * FROM clientes WHERE idade > 30;`

**Operadores comuns:**  
- `=` igual  
- `!=` diferente  
- `<` menor que  
- `>` maior que  
- `<=` menor ou igual  
- `>=` maior ou igual  

**Combinando condições com AND e OR:**  
`SELECT * FROM clientes WHERE idade > 30 AND cidade = 'São Paulo';`

**Ordenar resultados com ORDER BY:**  
`SELECT * FROM clientes ORDER BY idade ASC;`  
(ou `DESC` para ordem decrescente)

**Limitar quantidade de resultados com LIMIT:**  
`SELECT * FROM clientes LIMIT 5;`

**Agrupar dados com GROUP BY:**  
`SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;`

**Filtrar grupos com HAVING:**  
`SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade HAVING COUNT(*) > 10;`

**Juntar tabelas com JOIN:**  
`SELECT pedidos.id, clientes.nome FROM pedidos JOIN clientes ON pedidos.id_cliente = clientes.id;`

---

### Sites para praticar SQL:
- https://sqlbolt.com  
- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
