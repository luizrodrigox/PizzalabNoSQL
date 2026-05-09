// CREATE

db.pedidos.insertOne({
  cliente: {
    nome: "Carlos"
  },
  total: 50,
  producao: {
    status: "Em preparo"
  }
});

// READ

db.pedidos.find();

// UPDATE

db.pedidos.updateOne(
  { _id: 1 },
  { $set: { total: 80 } }
);

// DELETE

db.pedidos.deleteOne({ _id: 2 });