import 'package:flutter/material.dart';

import 'package:healthylifecoach/main.dart';
import 'package:healthylifecoach/services/firebaseIslemleri.dart';

class UyeOl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("For Building a Better Life"),
        ),
        body: UyeOlBodyKismi(),
      ),
    );
  }
}

AuthIslemleri kayitOl = AuthIslemleri();

class UyeOlBodyKismi extends StatelessWidget {
  TextEditingController mail = TextEditingController();
  TextEditingController sifre = TextEditingController();
  TextEditingController kullaniciAdi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 25,
              width: 180,
              child: Center(
                child: Text(
                  "Hesabınızı Oluşturun",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            width: 275,
            child: TextFormField(
              controller: kullaniciAdi,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 177, 68, 68))),
                  labelText: "Kullanıcı Adı"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 275,
            child: TextFormField(
              controller: sifre,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 177, 68, 68))),
                  labelText: "Parola"),
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 275,
            child: TextFormField(
              controller: mail,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 177, 68, 68))),
                  labelText: "E-mail"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      kayitOl
                          .kullaniciYarat(
                              mail.text.toLowerCase().trim(), sifre.text.trim(), kullaniciAdi.text.toLowerCase().trim())
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApp())));
                    },
                    child: Text("Devam Et")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Text("Geri Dön"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
