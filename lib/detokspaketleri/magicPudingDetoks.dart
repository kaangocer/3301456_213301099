import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class magicPuding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: MagicPudingDetoks(),
      ),
      renk: Colors.white,
    );
  }
}

class MagicPudingDetoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "magicPudingDetoks",
          carouselJpg2: "juiceDetoksSeti2",
          carouselJpg3: "magicPudingDetoks",
          setinAdi: "Magic Puding Detoks",
          mlBilgisi: " ",
          aciklama:
              "Mutfağımızın en havalı ve en hafif pudingi ile tüm gün tok kalarak, gitmek bilmeyen inatçı son kilolarınızdan kurtulmanın keyfini çıkarın! Bir gün boyunca uygulayabileceğiniz bu programda sabah, öğle ve akşam için Magic Puding, iki ara öğün için ise Slimfit ve Dream Dust çaylarımız bulunmaktadır.",
        ),
        paketIcerigininFiyati(
          fiyatt: "200TL",
        ),
        icindekilerRowu(
          icerikk: "Magic Puding  ",
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
