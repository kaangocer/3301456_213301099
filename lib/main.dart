import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthylifecoach/anaSayfa.dart';
import 'package:healthylifecoach/hosGeldiniz.dart';
import 'package:healthylifecoach/services/firebaseIslemleri.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(HosGeldiniz());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("hata"),
            );
          } else if (snapshot.hasData) {
            return Scaffold(body: HealthyLifeCoach());
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

AuthIslemleri girisIslemi = AuthIslemleri();

class HealthyLifeCoach extends StatelessWidget {
  TextEditingController mail = TextEditingController();
  TextEditingController sifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          color: Color.fromARGB(136, 52, 150, 68),
          child: Center(
            child: Text(
              "Kaan Göçer",
              style: TextStyle(fontSize: 25, fontFamily: "MsMadi"),
            ),
          ),
        ),
        Container(
            width: double.infinity,
            color: Color.fromARGB(136, 52, 150, 68),
            child: Center(
                child: Text("Healthy Life Coach",
                    style: TextStyle(fontSize: 20)))),
        SizedBox(
          height: 35,
        ),
        Container(
          width: 275,
          child: TextFormField(
            controller: mail,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 177, 68, 68))),
                labelText: "E-Posta"),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {
                  girisIslemi.girisYap(mail.text, sifre.text).then((value) =>
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AnaSayfa())));
                },
                child: Text(
                  "Giriş Yapın",
                  style: TextStyle(fontSize: 17),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnaSayfa()));
                },
                child: Text(
                  "Üye Ol",
                  style: TextStyle(fontSize: 17),
                )),
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
