// TOTAL DE VENDAS

db.pedidos.aggregate([
  {
    $group: {
      _id: null,
      total_vendas: {
        $sum: "$total"
      }
    }
  }
]);

// PEDIDOS POR CLIENTE

db.pedidos.aggregate([
  {
    $group: {
      _id: "$cliente.nome",
      quantidade: {
        $sum: 1
      }
    }
  }
]);