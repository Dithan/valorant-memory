import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/controllers/game_controller.dart';
import 'package:valorant_jogo_da_memoria/models/game_play.dart';
import 'package:valorant_jogo_da_memoria/screens/game_screen.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class CardNivel extends StatelessWidget {
  final GamePlay gamePlay;

  const CardNivel({
    required this.gamePlay,
    super.key,
  });

  startGame(BuildContext context) {
    context.read<GameController>().startGame(gamePlay: gamePlay);

    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => GameScreen(gamePlay: gamePlay),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => startGame(context),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 90,
        height: 90,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: gamePlay.modo == Modo.normal
                ? Colors.white
                : ValorantTheme.color,
          ),
          borderRadius: BorderRadius.circular(10),
          color: gamePlay.modo == Modo.normal
              ? Colors.transparent
              : ValorantTheme.color.withAlpha(6),
        ),
        child: Center(
          child: Text(
            gamePlay.nivel.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
