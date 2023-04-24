import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'BANDRA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Mumbai, India',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('95'),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        "Bandra has a large collection of street art or graffiti. The paintings on walls are principally located in the vicinity of Chapel Road and Veronica Street, but prominent works are also visible near Bandstand and Mount Mary Church. They consist of various types of graffiti, including pieces, stencils, tags, etc. Globally renowned artists such as Gomez have created works on these walls. St+art Mumbai, Bollywood Art Project and Dharavi Art Room are some of the organizations that conduct various programs to encourage the artists. The programs have support from the Brihanmumbai Municipal Corporation (BMC).Bandra was also home to the 37X46 metre (120X150 foot) portrait of Dadasaheb Phalke on the MTNL building at Bandra Reclamation. It was created by Ranjit Dahiya (from the Bollywood Art Project) and other artists including Yantr, Munir Bukhari and Nilesh Kharade as part of the St+art Mumbai festival in 2014. The mural was unveiled officially by Amitabh Bachchan and Piyush Pandey, but unfortunately the building has been re-painted.[31] It is reportedly Asia's largest mural.[32",
        softWrap: true,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Demo'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
