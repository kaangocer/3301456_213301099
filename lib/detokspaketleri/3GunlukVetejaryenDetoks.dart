import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class UcGunlukVejetaryen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: UcGunlukVejetaryenDetoks(),
      ),
      renk: Colors.white,
    );
  }
}

class UcGunlukVejetaryenDetoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "3GünlükVejetaryenDetoksPaketi",
          carouselJpg2: "5GünlükDetoksPaketi",
          carouselJpg3: "juiceDetoksSeti2",
          setinAdi: "3 Günlük Vejetaryen Detoks Paketi",
          mlBilgisi: " ",
          aciklama:
              "Özel bir etkinlik veya tatil programı öncesi ya da sonrası vücudundaki ödemden kurtulmak ve hafiflemek senin de hayalinse bu paket tam sana göre!",
        ),
        paketIcerigininFiyati(
          fiyatt: "480TL",
        ),
        icindekilerRowu(
          icerikk: "1. Gün Juice Detoks",
        ),
        icindekilerRowu(
          icerikk: "2. Gün Protein Detoks",
        ),
        icindekilerRowu(
          icerikk: "3. Gün Meyve - Sebze Detoks",
        ),
      ],
    );
  }
}
