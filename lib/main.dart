import 'package:flutter/material.dart';

import 'widgets/floating_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  increaseCounter() {
    setState(() => counter++);
  }

  decreaseCounter() {
    setState(() => counter--);
  }

  resetCounter() {
    setState(() => counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('App Counter')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: FloatingButtons(
          increase: increaseCounter,
          decrease: decreaseCounter,
          reset: resetCounter,
        ),
      ),
    );
  }
}
