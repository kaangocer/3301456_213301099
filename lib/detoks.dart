import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:healthylifecoach/detokspaketleri/3g%C3%BCnl%C3%BCkDetoksPaketi.dart';
import 'package:healthylifecoach/detokspaketleri/5GunlukDetoksPaketi.dart';
import 'package:healthylifecoach/anaSayfa.dart';
import 'package:healthylifecoach/detokspaketleri/juiceDetoksSeti.dart';
import 'package:healthylifecoach/detokspaketleri/magnoliaPudingDetoks.dart';
import 'package:healthylifecoach/sabitler.dart';
import 'package:healthylifecoach/detokspaketleri/wildBerryPudingDetoks.dart';

import 'detokspaketleri/3GunlukVeganDetoksPaketi.dart';
import 'detokspaketleri/3GunlukVetejaryenDetoks.dart';
import 'detokspaketleri/magicPudingDetoks.dart';

class Detoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: DetoksPaketleri(),
      renk: Colors.white,
    );
  }
}

class DetoksPaketleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return titleYazilari(titleKismi: detoksIcerik());
  }
}

class detoksIcerik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Container(
            height: 45,
            width: 200,
            color: Colors.pink,
            child: Center(
              child: Text(
                "DETOKS PAKETLERİ",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              ExpandedWidget(
                jpgDosyasi: "juiceDetoksSeti",
                jpgAdi: "Juice Detoks Seti",
                fiyatBilgisi: "160 TL",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => juice()));
                },
              ),
              ExpandedWidget(
                jpgDosyasi: "magicPudingDetoks",
                jpgAdi: "Magic Puding Detoks",
                fiyatBilgisi: "200 TL",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => magicPuding()));
                },
              )
            ],
          ),
          Row(
            children: [
              ExpandedWidget(
                jpgDosyasi: "magnoliaPudingDetoks",
                jpgAdi: "Magnolia Puding Detoks",
                fiyatBilgisi: "200 TL",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MagnoliaPuding()));
                },
              ),
              ExpandedWidget(
                jpgDosyasi: "WildBerryPudingDetoks",
                jpgAdi: "Wild Berry Puding Detoks",
                fiyatBilgisi: "200 TL",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WildBerry()));
                },
              ),
            ],
          ),
          Row(
            children: [
              ExpandedWidget(
                jpgDosyasi: "3GünlükDetoksPaketi",
                jpgAdi: "3 Günlük Detoks Paketi",
                fiyatBilgisi: "495 TL",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UcGunlukDetoks()));
                },
              ),
              ExpandedWidget(
                jpgDosyasi: "3GünlükVejetaryenDetoksPaketi",
                jpgAdi: "3 Günlük Vejetaryen Detoks Paketi",
                fiyatBilgisi: "480 TL",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UcGunlukVejetaryen()));
                },
              ),
            ],
          ),
          Row(
            children: [
              ExpandedWidget(
                jpgDosyasi: "3GünlükVeganDetoksPaketi",
                jpgAdi: "3 Günlük Vegan Detoks Paketi",
                fiyatBilgisi: "500 TL",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UcGunlukVegan()));
                },
              ),
              ExpandedWidget(
                jpgDosyasi: "5GünlükDetoksPaketi",
                jpgAdi: "5 Günlük Detoks Paketi",
                fiyatBilgisi: "700 TL",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BesGunlukDetoks()));
                },
              ),
            ],
          ),
        ],
      );
  }
}
