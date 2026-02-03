INSERT INTO cliente (nome, email) VALUES
('João Silva', 'joao@email.com'),
('Empresa X', 'contato@empresax.com');

INSERT INTO cliente_pf VALUES (1, '12345678901');
INSERT INTO cliente_pj VALUES (2, '12345678000199');

INSERT INTO fornecedor (nome) VALUES ('Fornecedor A');

INSERT INTO produto (nome, preco, id_fornecedor) VALUES
('Notebook', 3500.00, 1),
('Mouse', 80.00, 1);

INSERT INTO estoque VALUES
(1, 10),
(2, 50);

INSERT INTO pedido (id_cliente, data_pedido) VALUES
(1, '2026-01-15'),
(2, '2026-01-16');

INSERT INTO pedido_produto VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 5);

INSERT INTO pagamento (id_pedido, tipo, valor) VALUES
(1, 'Cartão de Crédito', 3660.00),
(1, 'Pix', 0.00),
(2, 'Boleto', 400.00);

INSERT INTO entrega (id_pedido, status, codigo_rastreio) VALUES
(1, 'Enviado', 'BR123456'),
(2, 'Em separação', 'BR789012');
