import 'dart:math';
import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/models/game_play.dart';
import 'package:valorant_jogo_da_memoria/widgets/card_game.dart';
import 'package:valorant_jogo_da_memoria/game_settings.dart';
import 'package:valorant_jogo_da_memoria/widgets/game_score.dart';

class GameScreen extends StatelessWidget {
  final GamePlay gamePlay;

  const GameScreen({super.key, required this.gamePlay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: GameScore(modo: gamePlay.modo),
      ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: GameSettings.gameBoardAxisCount(gamePlay.nivel),
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          padding: EdgeInsets.all(24),
          children: List.generate(
            gamePlay.nivel,
            (index) => CardGame(
              modo: gamePlay.modo,
              opcao: Random().nextInt(14),
            ),
          ),
        ),
      ),
    );
  }
}
