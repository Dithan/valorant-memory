import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class RecordsScreen extends StatelessWidget {
  final Modo modo;
  final List<String> recs = ['Modo', 'Nível 8', 'Nível 10', 'Nível 12'];

  RecordsScreen({super.key, required this.modo});

  getModo() {
    return modo == Modo.normal ? 'Normal' : 'Radiant';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Records'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: EdgeInsets.only(top: 36, bottom: 24),
                      child: Center(
                        child: Text(
                          'Modo ${getModo()}',
                          style: TextStyle(
                              fontSize: 28, color: ValorantTheme.color),
                        ),
                      ),
                    )
                  : ListTile(
                      title: Text(recs[index]),
                      trailing: Text('X jogadas'),
                      tileColor: Colors.grey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    );
            },
            separatorBuilder: (context, index) => Divider(
                  color: Colors.transparent,
                ),
            itemCount: recs.length),
      ),
    );
  }
}
