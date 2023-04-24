// import 'package:flutter/material.dart';
import "package:flutter/material.dart";
import "package:flutter_application_1/pages/login_page.dart";
import 'package:flutter_application_1/widgets/drawer.dart';
// import "drawer.dart"

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num1 = 10;
    String str = "Zaid Khan";
    // bool , char , num

    var day = "tuesday";
    const month = "April";

// Scaffold is a widget used instead of Material Widget
// material library prpovide inbuild css
    return MaterialApp(
        title: 'Hello Flutter ke Logo',
        // child: Container(
        //   color: Colors.blue,
        //   height: 10,
        //   // width: 100,
        // ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Appbar Catalog"),
          ),
          body: Center(

              //   child: Container(
              //   //   child: Text(
              //   //       "Hello world $num1 and my name is $str this is zaid kese ho Zaid here"),
              //   //   //  $num1 -- is string manupulation
              //   // ),

              // ),
              child: Column(
            children: [
              Image.asset(
                './assets/images/img1.jpg',
                fit: BoxFit.cover,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                height: 10,
                // width: 100,
              ),
              const Text("Hello Home page"),
              const Text("Click Here "),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => LoginPage()),
                    // );
                    // another way can be
                    Navigator.pop(context);
                  },
                  child: Text("Go to Login page"))
            ],
          )),
          drawer: const MyDrawer(),
        ));
  }
}
