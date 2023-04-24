import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Image Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Jayesh Khandare TE IT -18'),
//         ),
//         body: Container(
//           color: Colors.grey[200],
//           alignment: Alignment.center,
//           padding: EdgeInsets.all(30),
//           child: Image.asset('assets/img1.jpg'),
//         ),
//       ),
//     );
//   }
// }
// Add  charts_flutter: ^0.12.0 in pubspec.yaml

// import 'package:flutter/material.dart';
// // ignore: depend_on_referenced_packages
// import 'package:charts_flutter/flutter.dart' as charts;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'CHARTS',
//       home: ChartsScreen(),
//     );
//   }
// }

// class ChartsScreen extends StatefulWidget {
//   @override
//   _ChartsScreenState createState() => _ChartsScreenState();
// }

// class _ChartsScreenState extends State<ChartsScreen> {
//   late List<charts.Series<SalesData, String>> _seriesData;

//   @override
//   void initState() {
//     super.initState();
//     _generateData();
//   }

//   void _generateData() {
//     var data = [
//       SalesData('2016', 120),
//       SalesData('2017', 90),
//       SalesData('2018', 70),
//       SalesData('2019', 150),
//     ];

//     _seriesData = [
//       charts.Series(
//         id: 'Sales',
//         data: data,
//         domainFn: (SalesData sales, _) => sales.year,
//         measureFn: (SalesData sales, _) => sales.sales,
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Jayesh Khandare TE-IT-18'),
//       ),
//       body: Center(
//         child: charts.BarChart(
//           _seriesData,
//           animate: true,
//           vertical: false,
//           barRendererDecorator: charts.BarLabelDecorator<String>(),
//         ),
//       ),
//     );
//   }
// }

// class SalesData {
//   final String year;
//   final int sales;

//   SalesData(this.year, this.sales);
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jayesh Khandare TE-IT 18',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyIconPage(),
    );
  }
}

class MyIconPage extends StatefulWidget {
  @override
  _MyIconPageState createState() => _MyIconPageState();
}

class _MyIconPageState extends State<MyIconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jayesh Khandare TE-IT 18'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Icon(
                //   Icons.comment,
                //   size: 70,
                // ),
                // Text('comment'),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.alarm,
                      size: 70,
                    ),
                    Text('Alarm'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_tree,
                      size: 70,
                    ),
                    Text('Accont Tree'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.comment,
                      size: 70,
                    ),
                    Text('Rear Camera'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
