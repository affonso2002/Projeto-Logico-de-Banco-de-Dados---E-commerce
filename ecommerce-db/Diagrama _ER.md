erDiagram
    CLIENTE ||--o{ PEDIDO : realiza
    CLIENTE ||--|| CLIENTE_PF : especializa
    CLIENTE ||--|| CLIENTE_PJ : especializa

    PEDIDO ||--o{ PAGAMENTO : possui
    PEDIDO ||--|| ENTREGA : gera
    PEDIDO ||--o{ PEDIDO_PRODUTO : contém

    PRODUTO ||--o{ PEDIDO_PRODUTO : participa
    PRODUTO ||--|| ESTOQUE : possui
    FORNECEDOR ||--o{ PRODUTO : fornece
    FORNECEDOR ||--o{ VENDEDOR : vincula
