import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Experiment No.3'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.blue,
                    child: const Text('TE'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.green,
                    child: const Text('IT'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.grey,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: const Text(
                        'Zaid',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.blue[100],
                    child: const Text(
                      'Khan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.yellow,
                    child: const Text('MAD'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.pinkAccent,
                    child: const Text('Experiments'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.blue,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.white,
                      child: const Text('Assignments'),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [Text('Hello '), Text('Flutter'), Text('Dart')],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      color: Colors.amber,
                      child: const Text(
                        'Flutter',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      color: Colors.redAccent,
                      child: const Text(
                        'in',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        color: Color.fromARGB(255, 176, 128, 39),
                        child: const Text(
                          'Android Studio',
                          textAlign: TextAlign.center,
                        ),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
