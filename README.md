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

## Consulta SQL e View
A consulta SQL principal cria uma view chamada **RESULTADOS_ADW** que combina informações de vendas com dados de clientes, produtos e localização. Esta view oferece uma análise agregada de vendas, custos e lucros.
<br> <br> <br> 

## Alteração de Dados no Banco
Tambem possui a atualização de dados na tabela de vendas, alterando a quantidade de todos os pedidos para 1.
