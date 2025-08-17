import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/constants.dart';
import 'package:valorant_jogo_da_memoria/screens/records_screen.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  showRecords(Modo modo) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => RecordsScreen(modo: modo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Recordes',
                style: TextStyle(
                  color: ValorantTheme.color,
                  fontSize: 22,
                ),
              ),
            ),
            ListTile(
              title: Text('Protocolo Normal'),
              trailing: Icon(Icons.chevron_right),
              onTap: () => showRecords(Modo.normal),
            ),
            ListTile(
              title: Text('Protocolo Radiant'),
              trailing: Icon(Icons.chevron_right),
              onTap: () => showRecords(Modo.radiant),
            )
          ],
        ),
      ),
    );
  }
}
