import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthIslemleri {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> girisYap(String eMail, String sifre) async {
    var kullanici =
        await _auth.signInWithEmailAndPassword(email: eMail, password: sifre);
    return kullanici.user;
  }

  cikisYap() async {
    return await _auth.signOut();
  }

  Future<User?> kullaniciYarat(
      String eMail, String sifre, String kullaniciAdi) async {
    var kullanici = await _auth.createUserWithEmailAndPassword(
        email: eMail, password: sifre);
    Map<String, dynamic> kullaniciData = {
      "kullaniciAdi": kullaniciAdi,
      "sifre": sifre,
      "eMail": eMail
    };
    await _firestore
        .collection("tbKullanici")
        .doc(kullanici.user?.uid)
        .set(kullaniciData);

    return kullanici.user;
  }
}
