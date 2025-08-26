import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class CardGame extends StatefulWidget {
  final Modo modo;
  final int opcao;

  const CardGame({super.key, required this.modo, required this.opcao});

  @override
  State<CardGame> createState() => _CardGameState();
}

class _CardGameState extends State<CardGame>
    with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  flipCard() {
    if (!animation.isAnimating) {
      animation.forward();
      Timer(const Duration(seconds: 2), () => animation.reverse());
    }
  }

  AssetImage getImage(double angulo) {
    if (angulo > 0.5 * pi) {
      return AssetImage('assets/face-agents/${widget.opcao.toString()}.webp');
    } else {
      return AssetImage('assets/card/card-bg.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angulo = animation.value * pi;
        final transform = Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(angulo);

        return GestureDetector(
          onTap: () => flipCard(),
          child: Transform(
            transform: transform,
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: widget.modo == Modo.normal
                      ? Colors.white
                      : ValorantTheme.color,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
                image:
                    DecorationImage(image: getImage(angulo), fit: BoxFit.cover),
              ),
            ),
          ),
        );
      },
    );
  }
}
