# Pizzalab NoSQL

## Tópicos

- [Descrição](#decricao)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Banco Relacional Original](#banco-relacional-original)
- [Modelo NoSQL](#modelo-nosql)
- [Como Executar o Projeto](#como-executar-o-projeto)
- [Funcionalidades Demonstradas](#funcionalidades-demonstradas)
- [Relatório](#relatorio)
- [Desenvolvedores](#desenvolvedores)
- [Licença](#licenca)

---

<a id="descricao"></a>
## Descrição

O projeto tem como finalidade demonstrar o processo de migração de um banco relacional para um modelo orientado a documentos, aplicando conceitos de modelagem NoSQL, desnormalização, embedding e consultas utilizando MongoDB.

O sistema utilizado como base foi o Pizzalab, um sistema simples de gerenciamento de pedidos para pizzaria.

---

<a id="tecnologias-utilizadas"></a>
## Tecnologias Utilizadas

- PostgreSQL
- pgAdmin
- MongoDB
- MongoDB compass
- Git e GitHub

---

<a id="estrutura-do-projeto"></a>
## Estrutura do Projeto

```texto
pizzalab-nosql/
│
├── banco_relacional/
│   ├── create_tables.sql
│   ├── inserts.sql
│   └── consultas.sql
│
├── migracao/
│   ├── extracao.sql
│   ├── dados_convertidos.json
│   └── estrutura_nosql.md
│
├── mongodb/
│   ├── crud.js
│   ├── consultas.js
│   └── aggregation.js
│
├── prints/
│
├── relatorio/
│
└── README.md
```

---

<a id="banco-relacional-original"></a>
## Banco Relacional Original

O banco de dados relacional foi desenvolvido utilizando PostgreSQL e possui as seguintes tabelas:

- clientes
- cardapio
- pedidos
- producao

Relacionamentos:

```texto
CLIENTE (1,1) -------- realiza -------- (0,n) PEDIDO

PEDIDO (1,1) -------- possui -------- (1,1) PRODUCAO
```

---

<a id="modelo-nosql"></a>
## Modelo NoSQL

O banco NoSQL foi implementado utilizando MongoDB.

A modelagem adotada utilizou o padrão embedding, armazenando os dados do cliente e da produção diretamente dentro do documento do pedido.

Exemplo de documento:

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

<a id="como-executar-o-projeto"></a>
## Como Executar o Projeto

PostgreSQL

  1. Criar o banco de dados no PostgreSQL.

  2. Executar o arquivo:

  ```text
  create_tables.sql
  ```

  3. Executar o arquivo:

  ```text
  inserts.sql
  ```

  4. Executar as consultas presentes em:

  ```text
  consultas.sql
  ```

MongoDB

  1. Criar o banco de dados no MongoDB.

  2. Criar a coleção:

  ```text
  pedidos
  ```

  3. Importar o arquivo:

  ```text
  dados_convertidos.json
  ```

  4. Executar os comandos presentes em:

  ```text
  crud.js
  consultas.js
  aggregation.js
  ```

---

<a id="funcionalidades-demonstradas"></a>
## Funcionalidades Demonstradas

- Conversão de banco relacional para NoSQL
- Migração de dados do PostgreSQL para MongoDB
- CRUD no MongoDB
- Consultas com filtros
- Ordenação de documentos
- Aggregation Framework
- Modelagem orientada a documentos

---

<a id="relatorio"></a>
## Relatório

O relatório completo do projeto encontra-se disponível em:

```text
relatorio/
```

---

<a id="desenvolvedores"></a>
## Desenvolvedores

- Luiz Rodrigo Melo de Freitas Junior
- Jose Michel da Silva Celestino

---

<a id="licenca"></a>
## Licença

Este projeto está licenciado sob a licença **MIT**

Você pode usar, copiar, modificar e distribuir o sistema livremente, desde que mantenha os créditos aos autores originais.
