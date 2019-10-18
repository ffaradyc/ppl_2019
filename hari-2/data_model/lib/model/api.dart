// To parse this JSON data, do
//
//     final album = albumFromJson(jsonString);

import 'dart:convert';

List<Album> albumFromJson(String str) =>
    List<Album>.from(json.decode(str).map((x) => Album.fromJson(x)));

String albumToJson(List<Album> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Album {
  String title;
  String thumbnailUrl;

  Album({
    this.title,
    this.thumbnailUrl,
  });

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        title: json["title"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "thumbnailUrl": thumbnailUrl,
      };
}
