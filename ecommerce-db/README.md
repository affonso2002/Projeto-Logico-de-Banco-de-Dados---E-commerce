1. Descrição Geral do Projeto:
  Este projeto tem como objetivo a replicação e refinamento do modelo lógico de banco de dados para um cenário de e-commerce, a partir de um modelo conceitual EER.
  O foco está na correta definição de:

  - Chaves primárias e estrangeiras
  - Restrições de integridade (constraints)
  - Mapeamento de herança (especialização/generalização)
  - Relacionamentos entre entidades
  - Criação do script SQL completo
  - Inserção de dados para testes
  - Desenvolvimento de queries SQL mais complexas

2. Refinamentos Aplicados ao Modelo Conceitual:

  2.1 Cliente PF e PJ:

   - Um cliente pode ser Pessoa Física (PF) ou Pessoa Jurídica (PJ)
   - Não pode possuir ambas as informações

  Implementado via:

   - Tabela cliente
   - Tabelas especializadas cliente_pf e cliente_pj
   - Restrição lógica garantindo exclusividade

  2.2 Pagamento:

   - Um pedido pode possuir mais de uma forma de pagamento
   - Modelado como relacionamento 1:N entre pedido e pagamento

  2.3 Entrega:

  - Cada pedido possui uma entrega associada

  A entrega possui:
  - Status
  - Código de rastreio

3. Modelo Lógico – Principais Entidades:
 
  Entidades principais:
    - cliente
    - cliente_pf
    - cliente_pj
    - pedido
    - pagamento
    - entrega
    - produto
    - fornecedor
    - vendedor
    - estoque

4. Requisitos Atendidos:

  - Cliente Pessoa Física (PF) ou Pessoa Jurídica (PJ), mas nunca ambos
  - Múltiplas formas de pagamento por pedido
  - Entrega com status e código de rastreio
  - Relacionamentos entre clientes, pedidos, produtos, fornecedores, vendedores e estoque
  - Queries com:
    - SELECT
    - WHERE
    - ORDER BY
    - HAVING
    - JOIN

  Atributos derivados:
  - pedido_produto
    
5. Considerações Finais:

  - Este projeto demonstra:
      - Domínio de modelagem lógica e relacional
      - Aplicação correta de EER → Relacional
      - Uso avançado de SQL
      - Organização para avaliação acadêmica e portfólio profissional
