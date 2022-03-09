// ignore_for_file: prefer_const_constructors, duplicate_ignore

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/images/Logo.png'),
                  ),
                  Container(height: 20),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 20, bottom: 12),
                    child: Column(children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          if (email == 'danilo@test.com' &&
                              password == 'test#123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('falha na autenticação');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            )),
                      )
                    ]),
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
            )),
        Container(color: Colors.black.withOpacity(0.1)),
        _body(),
      ],
    ));
  }
}
