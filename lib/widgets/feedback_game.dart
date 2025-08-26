import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';
import 'package:valorant_jogo_da_memoria/widgets/start_button.dart';

class FeedbackGame extends StatelessWidget {
  final Resultado resultado;

  const FeedbackGame({super.key, required this.resultado});

  String getResultado() {
    return resultado == Resultado.aprovado ? 'aprovado' : 'eliminado';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${getResultado().toUpperCase()}!',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
          ),
          resultado == Resultado.eliminado
              ? StartButton(
                  title: 'Tentar novamente',
                  color: Colors.white,
                  action: () {},
                )
              : StartButton(
                  title: 'Próximo nível',
                  color: Colors.white,
                  action: () {},
                )
        ],
      ),
    );
  }
}
