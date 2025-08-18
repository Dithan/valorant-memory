import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class CardNivel extends StatelessWidget {
  final Modo modo;
  final int nivel;

  const CardNivel({
    super.key,
    required this.modo,
    required this.nivel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 90,
        height: 90,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: modo == Modo.normal ? Colors.white : ValorantTheme.color,
          ),
          borderRadius: BorderRadius.circular(10),
          color: modo == Modo.normal
              ? Colors.transparent
              : ValorantTheme.color.withAlpha(6),
        ),
        child: Center(
          child: Text(
            nivel.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
