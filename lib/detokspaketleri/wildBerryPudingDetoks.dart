import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class WildBerry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: WildBerryPudingDetoks(),
      ),
      renk: Colors.white,
    );
  }
}

class WildBerryPudingDetoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "WildBerryPudingDetoks",
          carouselJpg2: "juiceDetoksSeti2",
          carouselJpg3: "WildBerryPudingDetoks",
          setinAdi: "Wild Berry Puding Detoks",
          mlBilgisi: " ",
          aciklama:
              "Birbirinden şık ve hafif kırmızı meyveler ile glutensiz yulafın bir araya gelmesiyle oluşan, yüksek oranda lif ve antioksidan içeren Wild Berry Puding ile açlık hissinizi ve tatlı ihtiyacınızı baskılayarak hafifleyebilirsiniz! Bir gün boyunca uygulayabileceğiniz bu programda sabah, öğle ve akşam için Wild Berry Puding, iki ara öğün için ise Slimfit ve Dream Dust çaylarımız bulunmaktadır.",
        ),
        paketIcerigininFiyati(
          fiyatt: "200TL",
        ),
        icindekilerRowu(
          icerikk: "Wild Berry Puding",
        ),
        icindekilerRowu(
          icerikk: "Slimfit Tea",
        ),
        icindekilerRowu(
          icerikk: "Dream Dust",
        ),
      ],
    );
  }
}
