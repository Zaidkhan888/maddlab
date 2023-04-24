import "package:flutter/material.dart";
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey =
      GlobalKey<FormState>(); //this key was used for the validation
  moevToHome(BuildContext context) async {
    print("Logged In");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              './assets/images/img1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Another way to give the padding is by wrapping it into padding widget
          Text(
            "Login Page $name",
            style: TextStyle(
                fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          // we can also give directly column there is no need to write container and child
          Container(
            //extra
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "User Name"),
                        // validator: (value) {
                        //   if (value) {
                        //     return "Username cannot be empty";
                        //   }

                        //   return null;
                        // },
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) => {
                              name = value,
                              setState(() {}),
                            }

                        // setState (()=>{})

                        ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        }),

                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(),
                      onPressed: () {},
                    ),
                    //   InkWell(
                    //     onTap: () async {
                    //       setState(() {
                    //         changeButton = true;
                    //       });
                    //       await Future.delayed(Duration(seconds: 1));
                    //       MaterialPageRoute(builder: (context) => HomePage());
                    //     },
                    //     child: AnimatedContainer(
                    //         duration: Duration(seconds: 1),
                    //         width: changeButton ? 50 : 150,
                    //         height: 50,
                    //         alignment: Alignment.center,
                    //         child: changeButton
                    //             ? Icon(
                    //                 Icons.done,
                    //                 color: Colors.white,
                    //               )
                    //             : Text(
                    //                 "Login",
                    //                 style: TextStyle(
                    //                     color: Colors.white,
                    //                     fontWeight: FontWeight.bold,
                    //                     fontSize: 18),
                    //               ),
                    //         decoration: BoxDecoration(
                    //             color: Colors.deepPurple,
                    //             borderRadius: BorderRadius.circular(8))),
                    //   )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
