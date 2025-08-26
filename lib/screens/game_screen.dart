import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/widgets/card_game.dart';

class GameScreen extends StatelessWidget {
  final Modo modo;
  final int nivel;

  const GameScreen({super.key, required this.modo, required this.nivel});

  getAxisCount() {
    if (nivel < 10) {
      return 2;
    } else if (nivel == 10 || nivel == 12 || nivel == 18) {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(modo == Modo.radiant
                    ? Icons.my_location
                    : Icons.touch_app_rounded),
                SizedBox(width: 10),
                Text(
                  '18',
                  style: TextStyle(fontSize: 25),
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
                ))
          ],
        ),
      ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: getAxisCount(),
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          padding: EdgeInsets.all(24),
          children: List.generate(
            nivel,
            (index) => CardGame(
              modo: modo,
              opcao: Random().nextInt(14),
            ),
          ),
        ),
      ),
    );
  }
}
