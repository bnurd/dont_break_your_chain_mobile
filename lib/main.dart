import 'package:dont_break_your_chain_mobile/screens/chains_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChainApp());
}

class ChainApp extends StatelessWidget {
  const ChainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChainsScreen(),
    );
  }
}
