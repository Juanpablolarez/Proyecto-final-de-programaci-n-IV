import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 36),
            SizedBox(width: 10),
            Text('Carúpano Padel Club'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Navegar a Carrito
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {
              // Navegar a Perfil
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7, crossAxisSpacing: 18, mainAxisSpacing: 18),
        itemCount: 4, // Cambia por productos.length cuando uses provider
        itemBuilder: (ctx, i) => ProductCard(
          // producto: productos[i],
          onAddToCart: () {}, // Implementa lógica carrito
        ),
      ),
    );
  }
}