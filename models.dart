import 'package:sqflite/sqflite.dart';

class Notes {
  final int? id;
  final String note;
  final String? imgUrl;

  Notes({this.id, required this.note, this.imgUrl});

  factory Notes.fromMap(Map<String, dynamic> json) => Notes(
    id: json['id'],
    note: json['note'],
    imgUrl: json['imgUrl'],
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      "note": note,
      'imgUrl': imgUrl,
    };
  }
}