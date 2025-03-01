# Projeto de Análise de Vendas - Integração SQL com Power BI
<br>

## Visão Geral
Este projeto visa analisar dados de vendas utilizando SQL para manipulação de dados e Power BI para visualização interativa. A base de dados contém informações sobre transações de vendas, produtos, clientes e localização geográfica, permitindo análises detalhadas de performance de vendas, categorias de produtos e dados demográficos de clientes.
<br> <br> 

## Estrutura do Banco de Dados


As tabelas principais envolvidas são:

**FactInternetSales:** Contém as transações de vendas.<br> 
**DimProductSubcategory:** Subcategorias de produtos.<br> 
**DimProduct:** Detalhes dos produtos.<br> 
**DimProductCategory:** Categorias de produtos.<br> 
**DimCustomer:** Dados dos clientes.<br> 
**DimGeography:** Informações geográficas dos clientes.<br> <br> <br> 
**[Código SQL](https://github.com/maraysamacedo/analisedevendas/blob/main/2%C2%BA%20PROJETO%20COM%20POWER%20BI/Query%20com%20integra%C3%A7%C3%A3o%20e%20commit%20com%20Power%20BI.sql)**
<br><br>
## Consulta SQL e View
A consulta SQL principal cria uma view chamada **RESULTADOS_ADW** que combina informações de vendas com dados de clientes, produtos e localização. Esta view oferece uma análise agregada de vendas, custos e lucros.
<br> <br> <br> 

## Alteração de Dados no Banco
Tambem possui a atualização de dados na tabela de vendas, alterando a quantidade de todos os pedidos para 1.
<br><br>

## Demonstração do Projeto
![Demonstração do Projeto](2º%20PROJETO%20COM%20POWER%20BI/gif/Projeto_Integração_POWERBI_SQL.gif)
<br><br>


