import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:valorant_jogo_da_memoria/controllers/game_controller.dart';
import 'package:valorant_jogo_da_memoria/repositories/records_repository.dart';
import 'package:valorant_jogo_da_memoria/screens/home_page.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

void main() async {
  await Hive.initFlutter();

  runApp(MultiProvider(
    providers: [
      Provider<RecordsRepository>(create: (_) => RecordsRepository()),
      ProxyProvider<RecordsRepository, GameController>(
        update: (_, repo, __) => GameController(recordsRepository: repo),
      ),
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
