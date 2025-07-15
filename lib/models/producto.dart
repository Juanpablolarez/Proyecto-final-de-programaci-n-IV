class Producto {
  String id;
  String nombre;
  double precio;
  String imagenUrl;
  String descripcion;

  Producto({required this.id, required this.nombre, required this.precio, required this.imagenUrl, required this.descripcion});

  factory Producto.fromMap(Map<String, dynamic> map, String id) {
    return Producto(
      id: id,
      nombre: map['nombre'],
      precio: (map['precio'] as num).toDouble(),
      imagenUrl: map['imagenUrl'],
      descripcion: map['descripcion'],
    );
  }
}