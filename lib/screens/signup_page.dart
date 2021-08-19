// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logictask/screens/product_page.dart';

enum Authmode { signup, login }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _passController = TextEditingController();
  Authmode _authmode = Authmode.login;

  void swithMode() {
    if (_authmode == Authmode.login) {
      setState(() {
        _authmode = Authmode.signup;
      });
    } else {
      setState(() {
        _authmode = Authmode.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 4) {
                        return 'Enter minimum 4 characters';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Enter Valid Email Address';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Mobile Number'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.length == 10) {
                        return 'Enter Valid Number';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passController,
                    decoration: InputDecoration(labelText: 'Password'),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 8) {
                        return 'Password should be of 8 numeric digit';
                      }
                    },
                  ),
                  if (_authmode == Authmode.signup)
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password'),
                      validator: (value) {
                        if (_passController.text == value) {
                          return 'Password does not match';
                        }
                        return null;
                      },
                    ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(ProductScreen.routeName),
                    child:
                        Text(_authmode == Authmode.login ? 'Login' : 'Signup'),
                  ),
                  TextButton(
                    onPressed: swithMode,
                    child: Text(_authmode == Authmode.login
                        ? 'Create Account'
                        : 'Have Account ? '),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(ProductScreen.routeName),
                    child: Text('Skip'),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('test'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
