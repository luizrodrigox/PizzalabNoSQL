// FILTRO

db.pedidos.find({ total: { $gt: 50 } });

// ORDENAÇÃO

db.pedidos.find().sort({ total: -1 });

// PROJEÇÃO

db.pedidos.find(
 {},
 { "cliente.nome": 1, total: 1 }
);