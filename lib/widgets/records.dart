import 'package:flutter/material.dart';
import 'package:valorant_jogo_da_memoria/theme.dart';

class Records extends StatelessWidget {
  const Records({super.key});

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
              onTap: () {},
            ),
            ListTile(
              title: Text('Protocolo Radiant'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
