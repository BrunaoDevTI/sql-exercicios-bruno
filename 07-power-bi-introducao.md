# 📊 Introdução ao Power BI

O Power BI é uma ferramenta da Microsoft para **análise de dados e criação de dashboards interativos**. Ele permite transformar dados brutos em relatórios visuais que ajudam na tomada de decisões.

---

## 🔹 O que dá pra fazer com Power BI?

- Conectar dados de arquivos Excel, CSV, bancos de dados, APIs, etc.
- Criar gráficos, KPIs, filtros e painéis interativos
- Aplicar fórmulas com DAX (Data Analysis Expressions)
- Compartilhar relatórios com outras pessoas
- Automatizar atualizações de dados

---

## 🔹 Etapas do fluxo no Power BI

1. **Obter dados (Get Data):** conecta arquivos ou bancos
2. **Transformar dados (Power Query):** limpa e organiza os dados
3. **Modelar dados:** cria relações entre tabelas e define colunas calculadas
4. **Visualizar:** cria gráficos, tabelas, cartões e outros elementos
5. **Publicar:** envia o relatório para o Power BI Service (nuvem)

---

## 🔹 Tipos de visualizações mais comuns

- Colunas, barras, pizza
- Tabelas, matrizes
- Indicadores (KPIs)
- Segmentações (filtros)
- Gráficos de linha e área

---

## 🔹 O que é DAX?

DAX é a linguagem usada para criar **medidas e colunas calculadas** no Power BI.

Exemplos:
```dax
Total Vendas = SUM(Tabela[Valor])
Média Vendas = AVERAGE(Tabela[Valor])
Qtd Pedidos = COUNT(Tabela[ID_Pedido])

🧠 Dica de ouro
Antes de sair criando visualizações, entenda o que o usuário precisa analisar. Um bom dashboard conta uma história com os dados.
