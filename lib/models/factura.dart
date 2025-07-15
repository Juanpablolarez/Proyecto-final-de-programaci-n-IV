import 'package:cloud_firestore/cloud_firestore.dart';

class Factura {
  String id;
  String carritoId;
  double precioFinal;
  DateTime fecha;

  Factura({required this.id, required this.carritoId, required this.precioFinal, required this.fecha});

  factory Factura.fromMap(Map<String, dynamic> map, String id) {
    return Factura(
      id: id,
      carritoId: map['carritoId'],
      precioFinal: (map['precioFinal'] as num).toDouble(),
      fecha: (map['fecha'] as Timestamp).toDate(),
    );
  }
}
