SELECT 
id_pedido AS id_pedido,
valor_total AS valor_total,
data_emissao AS data_emissao,
CASE 
WHEN data_cancelamento IS NOT NULL THEN 'CANCELADO'
WHEN data_faturamento IS NOT NULL THEN 'FATURADO'
ELSE 'PENDENTE'
END AS Situação
FROM 
Pedido;