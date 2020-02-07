import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Nairobi', flag: 'Nairobi.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'UnitedState', flag: 'UnitedState.png', url: 'America/New_York'),
    WorldTime(location: 'SouthKorea', flag: 'SouthKorea.png', url: 'Asia/Seoul'),
    WorldTime(location: 'HongKong', flag: 'HongKong.png', url: 'Asia/Hong_Kong'),
    WorldTime(location: 'Brazil', flag: 'Brazil.png', url: 'America/Sao_Paulo'),
    WorldTime(location: 'Mexico', flag: 'Mexico.png', url: 'America/Mexico_City'),
    WorldTime(location: 'Germany', flag: 'Germany.png', url: 'Europe/Berlin'),
    WorldTime(location: 'France', flag: 'France.png', url: 'Europe/Paris'),
    WorldTime(location: 'UnitedKingdom', flag: 'UnitedKingdom.png', url: 'Europe/London'),
    WorldTime(location: 'Italy', flag: 'Italy.png', url: 'Europe/Rome'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
