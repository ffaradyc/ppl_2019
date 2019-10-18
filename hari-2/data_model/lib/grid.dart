import 'package:data_model/api_model.dart';
import 'package:data_model/model/api.dart';
import 'package:data_model/model/dosen.dart';
import 'package:flutter/material.dart';

class ContohGrid extends StatefulWidget {
  const ContohGrid({Key key}) : super(key: key);

  @override
  _ContohGridState createState() => _ContohGridState();
}

class _ContohGridState extends State<ContohGrid> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiModel.getDataAlbum(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data != null) {
            return Container(
              height: 250.0,
              child: GridView.builder(
                itemCount: snapshot.data.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250),
                itemBuilder: (BuildContext context, int index) {
                  return GridTile(
                    child: Container(
                      height: 250.0,
                      margin: EdgeInsets.all(5.0),
                      color: Colors.yellow,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Image.network(
                              snapshot.data[index].thumbnailUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Center(
                            child: Text(
                              snapshot.data[index].title,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
