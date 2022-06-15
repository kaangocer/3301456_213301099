import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../sabitler.dart';

class juice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: JuiceDetoksSeti(),
      ),
      renk: Colors.white,
    );
  }
}

class JuiceDetoksSeti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "juiceDetoksSeti",
          carouselJpg2: "juiceDetoksSeti2",
          carouselJpg3: "juiceDetoksSeti",
          setinAdi: "Juice Detoks Seti",
          mlBilgisi: "500ml",
          aciklama:
              "Günlük rutinlerinizi ihmal etmeden, vücuttaki ödem ve toksinlerden arınıp hafiflemenin en hızlı yolu! İçerdiği doğal vitamin, mineral ve antioksidanlar sayesinde gün boyunca hem tok kalacak hem de ertesi güne her zamankinden daha enerjik ve parlak bir cilt ile uyanacaksınız. 1 günlük 6’lı sıvı detoks paketidir.",
        ),
        paketIcerigininFiyati(
          fiyatt: "160TL",
        ),
        icindekilerRowu(
          icerikk: "So Green",
        ),
        icindekilerRowu(
          icerikk: "Slimfit Tea",
        ),
        icindekilerRowu(
          icerikk: "Blondie",
        ),
        icindekilerRowu(
          icerikk: "Better off Red",
        ),
        icindekilerRowu(
          icerikk: "Dream Dust",
        ),
      ],
    );
  }
}
