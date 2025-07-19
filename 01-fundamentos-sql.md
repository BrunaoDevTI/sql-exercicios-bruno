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

## Tópicos adicionais importantes

**DISTINCT (valores únicos):**  
Remove duplicatas no resultado.  
`SELECT DISTINCT cidade FROM clientes;`

**IS NULL / IS NOT NULL:**  
Verifica se um campo está vazio ou preenchido.  
`SELECT * FROM pedidos WHERE valor IS NULL;`  
`SELECT * FROM pedidos WHERE valor IS NOT NULL;`

**Subquery (consulta dentro de outra):**  
`SELECT nome FROM clientes WHERE idade > (SELECT AVG(idade) FROM clientes);`

**Alias (apelidos):**  
Usado para renomear colunas ou tabelas no resultado.  
`SELECT nome AS nome_cliente, idade FROM clientes;`  
`SELECT c.nome, p.valor FROM clientes c JOIN pedidos p ON p.id_cliente = c.id;`

**Funções de agregação:**  
- `COUNT()` → Conta registros  
- `SUM()` → Soma valores  
- `AVG()` → Média  
- `MIN()` → Menor valor  
- `MAX()` → Maior valor  

Exemplo:  
`SELECT AVG(idade) AS media_idade FROM clientes;`

**BETWEEN (intervalo):**  
`SELECT * FROM clientes WHERE idade BETWEEN 25 AND 35;`

**IN (múltiplos valores):**  
`SELECT * FROM clientes WHERE cidade IN ('São Paulo', 'Curitiba');`

**LIKE (buscar por padrão):**  
`SELECT * FROM clientes WHERE nome LIKE 'A%';`   (começa com A)  
`SELECT * FROM clientes WHERE nome LIKE '%a';`   (termina com a)  
`SELECT * FROM clientes WHERE nome LIKE '%ar%';` (contém "ar")

---

### Sites para praticar SQL:
- https://sqlbolt.com  
- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
