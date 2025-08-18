import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/screens/niveis_screen.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';
import 'package:valorant_jogo_da_memoria/widgets/logo.dart';
import 'package:valorant_jogo_da_memoria/widgets/records.dart';
import 'package:valorant_jogo_da_memoria/widgets/start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            StartButton(
              title: 'Iniciar Protocolo',
              color: Colors.white,
              action: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NiveisScreen(
                      modo: Modo.normal,
                    ),
                  )),
            ),
            StartButton(
              title: 'Protocolo Radiant',
              color: ValorantTheme.color,
              action: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NiveisScreen(
                      modo: Modo.radiant,
                    ),
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            Records(),
          ],
        ),
      ),
    );
  }
}
