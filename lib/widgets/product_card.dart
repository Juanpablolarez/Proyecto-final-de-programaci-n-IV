import 'package:flutter/material.dart';
import '../models/producto.dart';
import '../theme/colors.dart';

class ProductCard extends StatelessWidget {
  // final Producto producto;
  final VoidCallback onAddToCart;

  const ProductCard({
    // required this.producto,
    required this.onAddToCart,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondary,
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network(producto.imagenUrl, height: 110, fit: BoxFit.cover),
          Container(height: 110, color: AppColors.primary), // Placeholder
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              //'${producto.nombre}',
              'Producto',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              //'${producto.descripcion}',
              'Descripción breve',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              //'\$${producto.precio.toStringAsFixed(2)}',
              '\$0.00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.text,
              ),
              onPressed: onAddToCart,
              child: Text('Agregar al carrito'),
            ),
          ),
        ],
      ),
    );
  }
}