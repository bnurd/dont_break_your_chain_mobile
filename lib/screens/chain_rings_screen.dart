import 'package:flutter/material.dart';

class ChainRingsScreen extends StatelessWidget {
  ChainRingsScreen({Key? key, this.title = ""}) : super(key: key);

  final String title;

  var rings = [
    {"date": DateTime(2022, 3, 15), "done": true},
    {"date": DateTime(2022, 3, 16), "done": true},
    {"date": DateTime(2022, 3, 17), "done": false},
    {"date": DateTime(2022, 3, 18), "done": true},
    {"date": DateTime(2022, 3, 19), "done": true},
    {"date": DateTime(2022, 3, 19), "done": false},
    {"date": DateTime(2022, 3, 20), "done": true},
    {"date": DateTime(2022, 3, 21), "done": true},
    {"date": DateTime(2022, 3, 22), "done": true},
    {"date": DateTime(2022, 3, 23), "done": true},
    {"date": DateTime(2022, 3, 24), "done": false},
    {"date": DateTime(2022, 3, 25), "done": true},
    {"date": DateTime(2022, 3, 26), "done": true},
    {"date": DateTime(2022, 3, 27), "done": true},
  ];

  List<Widget> buildGridViewChildren() {
    var list = rings
        .map(
          (e) => Cell(
            done: e["done"] as bool,
            date: e["date"] as DateTime,
          ),
        )
        .toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(18.0),
        crossAxisSpacing: 8.0,
        crossAxisCount: 5,
        children: buildGridViewChildren(),
      ),
    );
  }
}

class Cell extends StatelessWidget {
  const Cell({Key? key, this.done = false, required this.date})
      : super(key: key);

  final bool done;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    if (date.isAfter(DateTime.now())) {
      return Container(
        color: Colors.blueAccent,
        width: 75,
        height: 75,
        child: Center(),
      );
    } else {}
    return Container(
      width: 75,
      height: 75,
      child: Center(
        child: done ? Icon(Icons.done) : Icon(Icons.cancel),
      ),
    );
  }
}
