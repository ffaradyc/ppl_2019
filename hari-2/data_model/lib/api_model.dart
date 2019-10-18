import 'package:data_model/model/api.dart';
import 'package:http/http.dart';
import 'dart:async';


class ApiModel {
  static Future<List<Album>> getDataAlbum() async {
    String url = "https://jsonplaceholder.typicode.com/photos";
    Response response = await get(url);
    if (response.statusCode == 200)
    {
      return albumFromJson(response.body);
    } else {
      throw Exception("Failed");
    }
  }
}