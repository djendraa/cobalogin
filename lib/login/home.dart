import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UTS Pemrograman Mobile 1 - Djendra",
        style: TextStyle(fontSize: 17),
        ),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.height - 50,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget> [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    child: Center(
                        child: Image(
                        image: AssetImage(
                          "assets/binainsani.png",
                        ),
                    )),
                  ),
                  Text(
                    'Djendra Wisnu Nugroho',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2018310059',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Teknik Informatika (TI-18C)',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ulangan Tengah Semester (UTS)',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pemrograman Mobile 1',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}