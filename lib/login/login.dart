import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String username,password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UTS Pemrograman Mobile 1 - Djendra"),
      ),
      backgroundColor: Colors.grey,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.height - 50,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: Center(
                        child: Image(
                      image: AssetImage(
                        "assets/loginlogo.png",
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    maxLengthEnforced: true,
                    controller: usernameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.black87, fontFamily: 'Roboto'),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLengthEnforced: true,
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black87, fontFamily: 'Roboto'),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(fontFamily: 'Roboto'),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black)),
                      color: Colors.blueAccent,
                      textColor: Colors.black,
                      child: Text(
                        "Sign In".toUpperCase(),
                        style: TextStyle(fontSize: 16),),
                    onPressed: (){
                          username= usernameController.text;
                          password = passwordController.text;

                        if(_formKey.currentState.validate()){
                          if(username.isEmpty) {
                            Fluttertoast.showToast(
                            msg: "Username harus di isi!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            ); 
                          } else if(username.length < 7 ) {
                            Fluttertoast.showToast(
                            msg: "Username harus lebih dari 7 karakter",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            ); 
                          } else if(password.isEmpty) {
                            Fluttertoast.showToast(
                            msg: "Password harus di isi!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            ); 
                          } else if(password.length < 7 ) {
                            Fluttertoast.showToast(
                            msg: "Password harus lebih dari 5 karakter",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            ); 
                          } else {
                            Fluttertoast.showToast(
                            msg: "LOGIN BERHASIL",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            );
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                          }               
                        }
                        
                      }                                        
                    ),
                  
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xffEDFF1D),
                            const Color(0xffEDFF1D)
                          ]
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: 
                      Text(
                        "NO ACCOUNT YET? SIGNUP NOW", 
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
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