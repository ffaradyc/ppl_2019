import 'package:data_model/grid.dart';
import 'package:data_model/model/dosen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh List"),
        ),
        body: ContohGrid(),
      ),
    );
  }
}

class ContohList extends StatelessWidget {
  const ContohList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: ListView.builder(
        itemCount: dataDosen.length,
        
        itemBuilder: (BuildContext context, int index) {
          return DaftarDosen(dosen: dataDosen[index]);
        },
      )
    );
  }
}

class DaftarDosen extends StatelessWidget {
  const DaftarDosen( {
    Key key,
    this.dosen,
  }) : super(key: key);
  
  final Dosen dosen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        dosen.nama,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(dosen.prodi),
      leading: dosen.leadIcon,
      trailing: IconButton(
        icon: dosen.trailIcon,
        onPressed: () {},
      ),
    );
  }
}


