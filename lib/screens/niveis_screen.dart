import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/game_settings.dart';
import 'package:valorant_jogo_da_memoria/models/game_play.dart';
import 'package:valorant_jogo_da_memoria/widgets/card_nivel.dart';

class NiveisScreen extends StatelessWidget {
  final Modo modo;

  const NiveisScreen({super.key, required this.modo});

  @override
  Widget build(BuildContext context) {
    final niveis = GameSettings.niveis
        .map((n) => CardNivel(gamePlay: GamePlay(modo: modo, nivel: n)))
        .toList();

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
          children: niveis,
        ),
      ),
    );
  }
}
