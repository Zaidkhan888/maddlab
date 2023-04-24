import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black54,
        body: const Center(
          child: Text('Hello World this is Zaid Student of VCET ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ),
      ),
    );
  }
}
