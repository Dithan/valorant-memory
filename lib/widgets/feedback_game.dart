import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/controllers/game_controller.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';
import 'package:valorant_jogo_da_memoria/widgets/start_button.dart';

class FeedbackGame extends StatelessWidget {
  final Resultado resultado;

  const FeedbackGame({super.key, required this.resultado});

  String getResultado() {
    return resultado == Resultado.aprovado ? 'Vitória' : 'Derrota';
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.read<GameController>();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${getResultado().toUpperCase()}!',
            style: TextStyle(
                fontSize: 30,
                color: getResultado() == 'Vitória'
                    ? Colors.greenAccent
                    : ValorantTheme.color),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
          ),
          resultado == Resultado.eliminado
              ? StartButton(
                  title: 'Tentar novamente',
                  color: Colors.white,
                  action: () => controller.restartGame(),
                )
              : StartButton(
                  title: 'Próximo nível',
                  color: Colors.white,
                  action: () => controller.nextLevel(),
                )
        ],
      ),
    );
  }
}
