import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

import 'detokspaketleri/3GunlukVeganDetoksPaketi.dart';
import 'detokspaketleri/3günlükDetoksPaketi.dart';
import 'detokspaketleri/5GunlukDetoksPaketi.dart';
import 'detokspaketleri/juiceDetoksSeti.dart';
import 'detokspaketleri/magnoliaPudingDetoks.dart';

class HesaplamaBir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 101, 112),
      appBar: AppBar(title: Text("For Building a Better Life")),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "3GünlükDetoksPaketi",
                        oneriJpgAdi: "3 Günlük Detoks Paketi",
                        onPressOneri: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UcGunlukDetoks()));
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "5GünlükDetoksPaketi",
                        oneriJpgAdi: "5 Günlük Detoks Paketi",
                        onPressOneri: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BesGunlukDetoks()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "3GünlükVeganDetoksPaketi",
                        oneriJpgAdi: "3 Günlük Vegan Detoks Paketi",
                        onPressOneri: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UcGunlukVegan()));
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "juiceDetoksSeti",
                        oneriJpgAdi: "Juice Detoks Seti",
                        onPressOneri: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => juice()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: OnerilerColumn(
                      oneriJpg: "magnoliaPudingDetoks",
                      oneriJpgAdi: "Magnolia Puding Detoks",
                      onPressOneri: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MagnoliaPuding()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "1HaftalikVeganFitPaket",
                        oneriJpgAdi: "1 Haftalık Vegan Fit Paket",
                        onPressOneri: () {}),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
