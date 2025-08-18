import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/widgets/card_nivel.dart';

class NiveisScreen extends StatelessWidget {
  final Modo modo;

  const NiveisScreen({super.key, required this.modo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nível do Jogo'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 48),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: EdgeInsets.all(24),
          children: [
            CardNivel(modo: modo, nivel: 6),
            CardNivel(modo: modo, nivel: 8),
            CardNivel(modo: modo, nivel: 10),
            CardNivel(modo: modo, nivel: 12),
            CardNivel(modo: modo, nivel: 16),
            CardNivel(modo: modo, nivel: 18),
          ],
        ),
      ),
    );
  }
}
