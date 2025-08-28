import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/repositories/records_repository.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class RecordsScreen extends StatelessWidget {
  final Modo modo;

  const RecordsScreen({super.key, required this.modo});

  getModo() {
    return modo == Modo.normal ? 'Normal' : 'Radiant';
  }

  List<Widget> getRecordsList(Map records) {
    final List<Widget> widgets = [];

    records.forEach((nivel, score) {
      widgets.add(ListTile(
        title: Text('Nível $nivel'),
        trailing: Text(score.toString()),
        tileColor: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ));

      widgets.add(Divider(color: Colors.transparent));
    });

    if (widgets.isEmpty) {
      widgets.add(Center(
        child: Text('Ainda não há recordes!'),
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<RecordsRepository>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Recordes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Observer(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 26, bottom: 24),
                child: Center(
                  child: Text(
                    'Modo ${getModo()}',
                    style: TextStyle(fontSize: 28, color: ValorantTheme.color),
                  ),
                ),
              ),
              ...getRecordsList(modo == Modo.normal
                  ? repository.recordsNormal
                  : repository.recordsRadiant),
            ],
          ),
        ),
      ),
    );
  }
}
