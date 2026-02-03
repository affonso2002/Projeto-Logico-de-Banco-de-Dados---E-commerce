-- Quantos pedidos foram feitos por cada cliente?
    SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
    FROM cliente c
    LEFT JOIN pedido p ON c.id_cliente = p.id_cliente
    GROUP BY c.nome;

-- Algum vendedor também é fornecedor?
    SELECT v.nome AS vendedor, f.nome AS fornecedor
    FROM vendedor v
    JOIN fornecedor f ON v.id_fornecedor = f.id_fornecedor;

-- Relação de produtos, fornecedores e estoque:
    SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade
    FROM produto p
    JOIN fornecedor f ON p.id_fornecedor = f.id_fornecedor
    JOIN estoque e ON p.id_produto = e.id_produto;

-- Relação dos nomes dos fornecedores e nomes dos produtos:
    SELECT f.nome AS fornecedor, p.nome AS produto
    FROM fornecedor f
    JOIN produto p ON f.id_fornecedor = p.id_fornecedor
    ORDER BY f.nome;

-- Valor total gasto por pedido (atributo derivado):
      SELECT p.id_pedido,
         SUM(pp.quantidade * pr.preco) AS valor_total
      FROM pedido p
      JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido
      JOIN produto pr ON pp.id_produto = pr.id_produto
      GROUP BY p.id_pedido
      HAVING valor_total > 500;



