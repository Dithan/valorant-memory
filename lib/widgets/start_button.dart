import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class StartButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function action;

  const StartButton({
    super.key,
    required this.title,
    required this.color,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24),
      child: OutlinedButton(
          style: ValorantTheme.outlineButtonStyle(color: color),
          onPressed: () => action(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20),
              )
            ],
          )),
    );
  }
}
