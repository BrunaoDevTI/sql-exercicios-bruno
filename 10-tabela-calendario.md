# 📅 Tabela Calendário no Power BI

A Tabela Calendário é essencial para análises com datas no Power BI: total por mês, comparação com o mês anterior, acumulado do ano (YTD), dia da semana etc.

---

## 🧱 O que é uma Tabela Calendário?

É uma tabela auxiliar contendo todas as datas de um intervalo (ex: 01/01/2023 a 31/12/2024), junto com colunas como:

- Ano
- Mês
- Mês (texto)
- Trimestre
- Dia da semana
- Semana do ano

---

## 🛠 Como criar com DAX

Crie uma nova tabela (Modelagem > Nova Tabela) com:

```dax
Calendario = CALENDAR(DATE(2023,1,1), DATE(2024,12,31))
📌 Colunas adicionais com DAX
dax
Copiar
Editar
Calendario[Ano] = YEAR(Calendario[Date])
Calendario[Mes] = MONTH(Calendario[Date])
Calendario[MesNome] = FORMAT(Calendario[Date], "MMMM")
Calendario[Trimestre] = "T" & FORMAT(Calendario[Date], "Q")
Calendario[DiaSemana] = FORMAT(Calendario[Date], "dddd")
Calendario[NumeroSemana] = WEEKNUM(Calendario[Date])
🔁 Como relacionar com sua tabela de vendas
Relacione a coluna Calendario[Date] com Vendas[Data]

O relacionamento deve ser 1:N (um para muitos)

Isso permite usar funções como TOTALYTD, PREVIOUSMONTH, etc.

🧠 Exemplos com funções de tempo
dax
Copiar
Editar
-- Total acumulado no ano
Total YTD = CALCULATE(SUM(Vendas[Valor]), DATESYTD(Calendario[Date]))

-- Total do mês anterior
Mês Anterior = CALCULATE(SUM(Vendas[Valor]), PREVIOUSMONTH(Calendario[Date]))

-- Total dos últimos 30 dias
Últimos30Dias = CALCULATE(SUM(Vendas[Valor]), DATESINPERIOD(Calendario[Date], MAX(Calendario[Date]), -30, DAY))
🚨 Importante
Nunca use colunas de data da sua tabela de fatos direto no eixo de gráficos.

Sempre use a coluna da Tabela Calendário para datas, meses e filtros.
