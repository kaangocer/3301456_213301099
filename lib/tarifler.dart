import 'package:flutter/material.dart';
import 'package:healthylifecoach/tarifler/avokadoluBruschetta.dart';
import 'package:healthylifecoach/tarifler/blueSmoothieBowl.dart';
import 'package:healthylifecoach/tarifler/borsCorbasi.dart';
import 'package:healthylifecoach/tarifler/fitPizza.dart';
import 'package:healthylifecoach/tarifler/galette.dart';
import 'package:healthylifecoach/tarifler/incirliRicottaliKek.dart';
import 'package:healthylifecoach/tarifler/limonluKakaoluFitToplar.dart';
import 'package:healthylifecoach/tarifler/rengarenkHumus.dart';
import 'package:healthylifecoach/sabitler.dart';
import 'package:healthylifecoach/tarifler/yabanMersinliGranola.dart';
import 'package:healthylifecoach/tarifler/yesilDetoksSmoothie.dart';

import 'tarifler/karpuzluSmoothieBowl.dart';

class Tarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: Tarifler(),
      ),
      renk: Colors.white,
    );
  }
}

class Tarifler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: TarifColumn(
            tarifJpg: "AvokadoluBruschetta",
            tarifAdi: "Avokadolu Bruschetta",
            tariflerOnPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Avokadolu()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "KarpuzluSmoothieBowl",
            tarifAdi: "Karpuzlu Smoothie Bowl",
            tariflerOnPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KarpuzluSmoothie()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "IncirliRicottaliKek",
            tarifAdi: "İncirli Ricottalı Kek",
            tariflerOnPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IncirliRicottaliKek()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "BlueSmoothieBowl",
            tarifAdi: "Blue Smoothie Bowl",
            tariflerOnPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BlueSmoothieBowl()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "YabanMersinliGranola",
            tarifAdi: "Yaban Mersinli Granola",
            tariflerOnPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => YabanMersinliGranola()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "Galette",
            tarifAdi: "Galette",
            tariflerOnPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Galette()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "LimonluVeKakaoluFitToplar",
            tarifAdi: "Limonlu ve Kakaolu Fit Toplar",
            tariflerOnPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LimonluKakaoluFitToplar()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "YesilDetoksSmoothie",
            tarifAdi: "Yeşil Detoks Smoothie",
            tariflerOnPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => YesilDetoksSmoothie()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "RengarenkHumus",
            tarifAdi: "Rengarenk Humus",
            tariflerOnPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RengarenkHumus()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "BorsCorbasi",
            tarifAdi: "Borş Çorbası",
            tariflerOnPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BorsCorbasi()));
            },
          ),
        ),
        Container(
          child: TarifColumn(
            tarifJpg: "FitPizza",
            tarifAdi: "Fit Pizza",
            tariflerOnPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FitPizza()));
            },
          ),
        )
      ],
    );
  }
}
