# Estrutura NoSQL – Pizzalab

## Banco Relacional Original

O banco relacional original foi desenvolvido em PostgreSQL e possuía as seguintes tabelas:

- clientes
- cardapio
- pedidos
- producao

Os relacionamentos existentes eram:

- Cliente (1:N) Pedido
- Pedido (1:1) Produção

---

# Modelo NoSQL Proposto

Foi utilizada uma modelagem orientada a documentos utilizando MongoDB.

A principal coleção criada foi:

- pedidos

O padrão utilizado foi o de embedding, onde os dados do cliente e da produção foram inseridos dentro do documento do pedido.

Essa abordagem reduz a necessidade de JOINs e melhora o desempenho das consultas.

---

# Estrutura do Documento

Exemplo:

```json
{
  "_id": 1,
  "cliente": {
    "id_cliente": 1,
    "nome": "João Silva",
    "telefone": "99999-9999"
  },
  "total": 70,
  "producao": {
    "status": "Em preparo"
  }
}
```

---

# Justificativa da Modelagem

A modelagem utilizando embedding foi escolhida porque:

- cliente e pedido são frequentemente acessados juntos
- o status da produção pertence diretamente ao pedido
- reduz a necessidade de consultas complexas
- melhora a leitura dos dados

---

# Índices Possíveis

Os seguintes índices poderiam ser utilizados:

- índice por nome do cliente
- índice por status da produção
- índice por total do pedido

Exemplo:

```javascript
db.pedidos.createIndex({ "cliente.nome": 1 })
```