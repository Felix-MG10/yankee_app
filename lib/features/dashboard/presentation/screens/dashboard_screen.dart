import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tableau de bord')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Mes commandes'),
            onTap: () {
              // Navigation vers les commandes
            },
          ),
          ListTile(
            title: const Text('Mon portefeuille'),
            onTap: () {
              // Navigation vers le portefeuille
            },
          ),
          // Ajoutez d'autres éléments du menu ici
        ],
      ),
    );
  }
}