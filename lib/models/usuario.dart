class Usuario {
  String id;
  String nombre;
  String apellido;
  String correo;
  String rol;

  Usuario({required this.id, required this.nombre, required this.apellido, required this.correo, required this.rol});

  factory Usuario.fromMap(Map<String, dynamic> map, String id) {
    return Usuario(
      id: id,
      nombre: map['nombre'],
      apellido: map['apellido'],
      correo: map['correo'],
      rol: map['rol'],
    );
  }
}
