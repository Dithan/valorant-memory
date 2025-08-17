import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Image.asset(
            'assets/logo-valorant.png',
            width: 80,
            height: 80,
            alignment: Alignment.center,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: RichText(
            text: TextSpan(
              text: 'Valorant ',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 26),
              children: [
                TextSpan(
                  text: 'Memory',
                  style: TextStyle(color: ValorantTheme.color),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
