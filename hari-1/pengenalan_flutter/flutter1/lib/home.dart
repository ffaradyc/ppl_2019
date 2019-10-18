import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      home: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.android),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {},
                textColor: Color(0xff1BB687),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.build),
                    Text("Tools"),
                  ],
                ),
              ),
            ],
            title: Text("PPL Latihan 1"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    "Halo Apa Kabar Dunia",
                    style: TextStyle(
                        fontSize: 48.0,
                        fontFamily: 'Nunito',
                        color: Colors.white),
                  ),),
                ),
                Container(height: 200.0, color: Colors.green),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(height: 200.0, color: Colors.purple),
                    Container(height: 200.0, color: Colors.teal),
                    Container(height: 200.0, color: Colors.lime),
                  ],
                ),
                Container(height: 200.0, color: Colors.blue),
                Container(height: 200.0, color: Colors.orange),
              ],
            ),
          )),
    );
  }
}
