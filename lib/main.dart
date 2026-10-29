import 'package:flutter/material.dart';

void main() {
  runApp(const ChefHubApp());
}

class ChefHubApp extends StatelessWidget {
  const ChefHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChefHub',
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChefHub'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bem-vindo ao ChefHub!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Encontre receitas deliciosas para o seu dia a dia.',
              ),
              const SizedBox(height: 30),
              const Text(
                'Categorias',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Icon(Icons.breakfast_dining),
                  SizedBox(width: 10),
                  Text('Café da manhã'),
                  SizedBox(width: 20),
                  Icon(Icons.lunch_dining),
                  SizedBox(width: 10),
                  Text('Almoço'),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Receitas em destaque',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.orange.shade100,
                child: const Row(
                  children: [
                    Icon(Icons.restaurant),
                    SizedBox(width: 15),
                    Text('Macarrão à bolonhesa'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.orange.shade100,
                child: const Row(
                  children: [
                    Icon(Icons.restaurant),
                    SizedBox(width: 15),
                    Text('Bolo de chocolate'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
