import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_jogo_da_memoria/controllers/game_controller.dart';
import 'package:valorant_jogo_da_memoria/screens/home_page.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<GameController>(create: (_) => GameController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valorant Memory',
      theme: ValorantTheme.theme,
      home: const HomePage(),
    );
  }
}
