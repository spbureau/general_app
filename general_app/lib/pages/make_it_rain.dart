import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  const MakeItRain({super.key});
  @override
  State<MakeItRain> createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {
  int _myMoney = 0;

  void _increaseMoney() {
    setState(() {
      _myMoney += 500;
      debugPrint("$_myMoney");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.money),
        title: const Text("Money Machine"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Make it rain!",
              style: TextStyle(fontSize: 30.0),
            ),
            // Money Value
            Text(
              '\$$_myMoney',
              style: const TextStyle(color: Colors.red, fontSize: 50.0),
            ),
            // Button to Increase value
            ElevatedButton(
              onPressed: _increaseMoney,
              child: const Text(
                "Increase Now",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
