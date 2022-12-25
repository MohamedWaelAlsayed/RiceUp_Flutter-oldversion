import 'package:flutter/material.dart';
import 'package:project1/Screens/home_screen.dart';
import 'package:project1/Screens/main_screen.dart';
import 'package:flutter/foundation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    onClickPrint() {
      print("hello in home");
    }

    onclick_btn() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
      ;
    }

    OnClick_btn2() {
      setState(() {});
    }

    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Image.asset(
            "images/back.jpeg",
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            children: <Widget>[
              const Image(
                image: AssetImage(
                  "images/login.png",
                ),
                width: 180,
                height: 210,
              ),
              const Text("Welcome !",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Container(
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(children: <Widget>[
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: new InputDecoration(
                          icon: Icon(
                            Icons.account_circle,
                          ),
                          labelText: "User Name",
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: new InputDecoration(
                          icon: Icon(
                            Icons.lock,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black)),
                    )
                  ])),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                Text("Forget Password ?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 4))
              ]),
              ElevatedButton(
                  onPressed: onclick_btn, child: const Text("Login")),
              const Text(
                "If you don't have an account :",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              ElevatedButton(
                  onPressed: OnClick_btn2, child: const Text("Sign_Up"))
            ],
          ),
        ]),
        appBar: AppBar(
          title: const Text(
            "Rice UP",
            textDirection: TextDirection.ltr,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: onClickPrint,
                icon: const Icon(Icons.account_balance))
          ],
          backgroundColor: Colors.lightGreen[900],
        ));
  }

  void setState(Null Function() param0) {}
}
