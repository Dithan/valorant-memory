import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/models/game_play.dart';

part 'records_repository.g.dart';

class RecordsRepository = RecordsRepositoryBase with _$RecordsRepository;

abstract class RecordsRepositoryBase with Store {
  late final Box _records;
  late final GamePlay gameplay;

  @observable
  Map recordsRadiant = {};

  @observable
  Map recordsNormal = {};

  RecordsRepositoryBase() {
    _initRepository();
  }

  _initRepository() async {
    await _initDatabase();
    await loadRecords();
  }

  _initDatabase() async {
    _records = await Hive.openBox('gameRecords');
  }

  @action
  loadRecords() {
    recordsNormal = _records.get(Modo.normal.toString()) ?? {};
    recordsRadiant = _records.get(Modo.radiant.toString()) ?? {};
  }

  updateRecords({required GamePlay gamePlay, required int score}) {
    final key = gamePlay.modo.toString();

    if (gamePlay.modo == Modo.normal &&
        (recordsNormal[gamePlay.nivel] == null ||
            score < recordsNormal[gamePlay.nivel])) {
      recordsNormal[gamePlay.nivel] = score;
      _records.put(key, recordsNormal);
    } else if (gamePlay.modo == Modo.radiant &&
        (recordsRadiant[gamePlay.nivel] == null ||
            score > recordsRadiant[gamePlay.nivel])) {
      recordsRadiant[gamePlay.nivel] = score;
      _records.put(key, recordsRadiant);
    }
  }
}
