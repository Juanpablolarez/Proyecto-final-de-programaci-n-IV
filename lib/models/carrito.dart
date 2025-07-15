class ItemCarrito {
  String id;
  String usuarioId;
  String productoId;
  int cantidad;

  ItemCarrito({required this.id, required this.usuarioId, required this.productoId, required this.cantidad});

  factory ItemCarrito.fromMap(Map<String, dynamic> map, String id) {
    return ItemCarrito(
      id: id,
      usuarioId: map['usuarioId'],
      productoId: map['productoId'],
      cantidad: map['cantidad'],
    );
  }
}
