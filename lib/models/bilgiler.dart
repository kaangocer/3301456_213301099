import '../services/dbhelper.dart';

class Bilgi {
  int? id;
  String? tarih;
  int? boy;
  int? kilo;

  Bilgi({this.id, this.tarih, this.boy,this.kilo});

  Bilgi.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    tarih = map["tarih"];
    boy = map['boy'];
    kilo = map['kilo'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnTarih: tarih,
      DatabaseHelper.columnBoy: boy,
      DatabaseHelper.columnKilo:kilo
    };
  }
}
