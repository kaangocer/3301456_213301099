import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class MagnoliaPuding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: MagnoliaPudingDetoks(),
      ),
      renk: Colors.white,
    );
  }
}

class MagnoliaPudingDetoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "magnoliaPudingDetoks",
          carouselJpg2: "juiceDetoksSeti2",
          carouselJpg3: "magnoliaPudingDetoks",
          setinAdi: "Magnolia Puding Detoks",
          mlBilgisi: " ",
          aciklama:
              "Tatlı menülerinin vazgeçilmezi olan Muzlu Çilekli Magnolia Puding’e kendi yorumumuzu katarak oluşturduğumuz bu özel ve lezzetli tarifle tatlıya doyarken aynı zamanda hafiflemek ister misiniz? Bir gün boyunca uygulayabileceğiniz bu programda sabah, öğle ve akşam için Magnolia Puding, iki ara öğün için ise Slimfit ve Dream Dust çaylarımız bulunmaktadır.",
        ),
        paketIcerigininFiyati(
          fiyatt: "200TL",
        ),
        icindekilerRowu(
          icerikk: "Magnolia Puding",
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
