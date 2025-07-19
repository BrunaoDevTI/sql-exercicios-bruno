# 🧠 DAX Avançado no Power BI

Neste material você vai entender as funções mais importantes do DAX para análises profissionais e dinâmicas.

---

## 🔄 1. CALCULATE

Altera o contexto de filtro de uma medida.

```dax
Total SP = CALCULATE(SUM(Vendas[Valor]), Vendas[Cidade] = "São Paulo")
Serve para calcular valores sob condições específicas.

🔍 2. FILTER
Usado dentro do CALCULATE para aplicar filtros mais flexíveis.

dax
Copiar
Editar
Total Grandes = CALCULATE(SUM(Vendas[Valor]), FILTER(Vendas, Vendas[Valor] > 100))
🚫 3. ALL
Remove todos os filtros do campo ou tabela especificada.

dax
Copiar
Editar
% Total = 
DIVIDE(
    SUM(Vendas[Valor]),
    CALCULATE(SUM(Vendas[Valor]), ALL(Vendas))
)
Usado para criar percentuais e totais gerais.

✅ 4. IF e SWITCH
IF
dax
Copiar
Editar
FaixaVenda = IF(Vendas[Valor] > 100, "Alta", "Baixa")
SWITCH (substitui vários IFs aninhados)
dax
Copiar
Editar
Categoria = SWITCH(TRUE(),
    Vendas[Valor] < 50, "Baixa",
    Vendas[Valor] < 100, "Média",
    "Alta"
)
🥇 5. RANKX
Cria rankings de clientes, cidades, produtos, etc.

dax
Copiar
Editar
RankingClientes = RANKX(ALL(Vendas[Cliente]), SUM(Vendas[Valor]), , DESC)
🕓 6. Funções de tempo (Time Intelligence)
Necessário ter uma tabela calendário relacionada com a data da venda.

dax
Copiar
Editar
Total Mês Anterior = CALCULATE(SUM(Vendas[Valor]), PREVIOUSMONTH(Calendario[Date]))

Total Acumulado = CALCULATE(SUM(Vendas[Valor]), DATESYTD(Calendario[Date]))
🧠 Dicas finais
Sempre crie medidas, não colunas calculadas, para cálculos dinâmicos

Use o ALL quando quiser comparar o valor de um item com o total geral

Sempre use DIVIDE(valor, divisor) no lugar de /, pois evita erro de divisão por zero

O SWITCH(TRUE(), ...) é muito útil para múltiplas faixas de valores

📚 Referência oficial
Guia completo de DAX: https://dax.guide/

Blog: https://www.sqlbi.com/
