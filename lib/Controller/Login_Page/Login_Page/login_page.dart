import 'package:flutter/material.dart';
// import 'package:flutter_dashboard_app/Controller/auth_controller.dart';
import 'package:flutter_dashboard_app/Pages/home.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Map<String, String> _loginUserData = {
    'email': 'abhimanoj.yadav@Careti.com',
    'password': 'test4321',
  };

  dynamic fetchData(dynamic email, dynamic password) async {
    final response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'email': email.toString(),
        'password': password.toString()
      }),
    );

    print(response.body);
    return response.body;
  }

  _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    print(_loginUserData);
    // AuthController.login(_loginUserData);
  }

  bool _isObscure = false;
  String mode = '';

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid username';
                      }
                      return null;
                    },
                    // onSaved: (value) => _model.email = value,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password required!';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },

                  // textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      // textColor: Colors.white,
                      // color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeApp()));

                        // var response = jsonDecode(fetchData(
                        //     nameController.text, passwordController.text));
                        // print(response['error']);
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => HomeApp()));
                        // if (jsonResponse.containsKey('error')) {
                        //   print("error");
                        // }
                        // if (response.containsKey("error")) {
                        //   print("Wrong credentials");
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => HomeApp()));
                        // } else {
                        //   print("Login successful \nToken : " + response);
                        // }
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => HomeApp()));
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    TextButton(
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
