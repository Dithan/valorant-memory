import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/controllers/game_controller.dart';

class GameScore extends StatelessWidget {
  final Modo modo;

  const GameScore({super.key, required this.modo});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(modo == Modo.radiant
                ? Icons.my_location
                : Icons.touch_app_rounded),
            SizedBox(width: 10),
            Observer(
              builder: (_) => Text(
                controller.score.toString(),
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            'assets/logo-valorant.png',
            width: 35,
            height: 35,
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Sair',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        )
      ],
    );
  }
}
