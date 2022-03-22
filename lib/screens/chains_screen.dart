import 'package:dont_break_your_chain_mobile/models/chain.dart';
import 'package:dont_break_your_chain_mobile/screens/chain_rings_screen.dart';
import 'package:flutter/material.dart';

class ChainsScreen extends StatelessWidget {
  ChainsScreen({Key? key}) : super(key: key);

  var chain = Chain("Target1", DateTime(2022, 3, 15), DateTime(2022, 3, 27));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Targets")),
      body: ListView(children: [
        ListTile(
          title: Text(chain.title!),
          subtitle: Text(
              (chain.endDate!.difference(DateTime.now())).inDays.toString() +
                  " days left"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChainRingsScreen(
                  title: "Target 1",
                ),
              ),
            );
          },
        )
      ]),
    );
  }
}
