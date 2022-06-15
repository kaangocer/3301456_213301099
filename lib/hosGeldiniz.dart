import 'package:flutter/material.dart';
import 'package:healthylifecoach/main.dart';
import 'package:healthylifecoach/uyeOl.dart';

import 'package:rive/rive.dart';

class HosGeldiniz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("For Building a Better Life"),
        ),
        body: HosGeldinizBodyKismi(),
      ),
    );
  }
}

class HosGeldinizBodyKismi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: RiveAnimation.asset(
            'assets/animation/pacman.riv',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            bottom: 50.0,
            left: 120,
            child: Text(
              "HOŞ GELDİNİZ...",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
        Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Positioned(
                    top: 50,
                    left: 20,
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      }),
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )),
                Positioned(
                    top: 50,
                    left: 200,
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => UyeOl()));
                      }),
                      child: Text(
                        "Üye Ol",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
