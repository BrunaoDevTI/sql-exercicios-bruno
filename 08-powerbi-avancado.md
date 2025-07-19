# 🚀 Power BI – Conceitos Intermediários

Este guia aprofunda os pontos essenciais para criar dashboards profissionais e eficientes no Power BI.

---

## 🧱 1. Modelagem de Dados

Modelagem é a estruturação das tabelas para que se relacionem corretamente.

### Tipos de tabelas:
- **Fato**: contém dados numéricos (ex: vendas, pedidos, notas)
- **Dimensão**: contém categorias (ex: clientes, cidades, produtos, tempo)

### Como modelar corretamente:
- Relacione tabelas pela chave (ex: `ClienteID`)
- Evite criar tudo em uma única tabela gigante
- Prefira tabelas separadas com relacionamentos bem definidos

---

## 📏 2. Tipos de Relacionamento

- **Um para Muitos (1:N)** → padrão ideal (ex: 1 cliente → N pedidos)
- **Muitos para Muitos (N:N)** → evitar
- **Relacionamento ativo x inativo** → quando há mais de um caminho entre tabelas

No Power BI, acesse “Modelo” para criar ou editar relacionamentos.

---

## 🧮 3. DAX – Linguagem de Expressão Analítica

DAX (Data Analysis Expressions) permite criar medidas, colunas calculadas e KPIs.

### 🔹 Tipos de fórmulas DAX

**Medidas:**
```dax
Total Vendas = SUM(Vendas[Valor])
Média Vendas = AVERAGE(Vendas[Valor])
Qtd Pedidos = COUNT(Vendas[ID])
Colunas calculadas:

dax
Copiar
Editar
AnoVenda = YEAR(Vendas[Data])
MêsVenda = FORMAT(Vendas[Data], "MMMM")
IF (condição):

dax
Copiar
Editar
Faixa = IF(Vendas[Valor] > 100, "Alta", "Baixa")
📊 4. Boas práticas de visualização
Use cores consistentes (ex: verde para sucesso, vermelho para alerta)

Não exagere na quantidade de gráficos

Sempre use filtros visuais ou segmentações

Prefira gráficos simples: colunas, barras, linhas, cartões

📌 5. Filtros e segmentações
Segmentação de dados: cria filtros por cidade, produto, cliente etc.

Slicer de período: filtra datas com barra de rolagem ou calendário

Filtro de página: afeta apenas uma página do relatório

🧠 Dicas bônus
Use a função “Ver como tabela” para conferir os dados brutos de qualquer visual

Use painéis de medidas centralizadas em vez de cálculos repetidos

Crie uma tabela calendário com colunas como Ano, Mês, Dia da Semana, etc.

📌 Tabela calendário (exemplo com DAX)
dax
Copiar
Editar
Calendario = CALENDAR(DATE(2023,1,1), DATE(2023,12,31))
Depois adicione colunas:

dax
Copiar
Editar
Ano = YEAR(Calendario[Date])
Mes = FORMAT(Calendario[Date], "MMMM")
DiaSemana = FORMAT(Calendario[Date], "dddd")
📚 Recursos extras recomendados
Blog Power BI da Microsoft: https://powerbi.microsoft.com/pt-br/blog/

Canal no YouTube: Dicas Power BI, Leandro Vettorazzi, Hashtag Treinamentos
