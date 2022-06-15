import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class UcGunlukVegan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: UcGunlukVeganDetoksPaketi(),
      ),
      renk: Colors.white,
    );
  }
}

class UcGunlukVeganDetoksPaketi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "3GünlükVeganDetoksPaketi",
          carouselJpg2: "3GünlükVeganDetoksPaketi2",
          carouselJpg3: "3GünlükVeganDetoksPaketi3",
          setinAdi: "3 Günlük Vegan Detoks Paketi",
          mlBilgisi: " ",
          aciklama:
              "Özel bir etkinlik veya tatil programı öncesi ya da sonrası vücudundaki ödemden kurtulmak ve hafiflemek senin de hayalinse bu paket tam sana göre!",
        ),
        paketIcerigininFiyati(
          fiyatt: "500TL",
        ),
        icindekilerRowu(
          icerikk: "1. Gün Juice Detoks",
        ),
        icindekilerRowu(
          icerikk: "2. Gün Meyve - Sebze Detoks",
        ),
        icindekilerRowu(
          icerikk: "3. Gün Protein Puding Detoks",
        ),
      ],
    );
  }
}
