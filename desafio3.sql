SELECT 
    Clientes.ID_CLIENTE,
    Clientes.RAZAO_SOCIAL,
    SUM(Pedido.VALOR_TOTAL) AS TotalPedidos
FROM 
    Clientes
JOIN 
    Pedido ON Clientes.ID_CLIENTE = Pedido.ID_CLIENTE
GROUP BY Clientes.ID_CLIENTE, Clientes.RAZAO_SOCIAL ORDER BY TotalPedidos DESC;