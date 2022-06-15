import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class UcGunlukDetoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: UcGunlukDetoksPaketi(),
      ),
      renk: Colors.white,
    );
  }
}

class UcGunlukDetoksPaketi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "3GunlukDetoksPaketiBirinciGun",
          carouselJpg2: "3GünlükDetoksPaketi",
          carouselJpg3: "3GunlukDetoksPaketiUcuncuGun",
          setinAdi: "3 Günlük Detoks Paketi",
          mlBilgisi: " ",
          aciklama:
              "Özel bir etkinlik veya tatil programı öncesi ya da sonrası vücudundaki ödemden kurtulmak ve hafiflemek senin de hayalinse bu paket tam sana göre! Protein günü için kırmızı et, balık veya tavuk seçeneklerinden birini tercih edebilirsiniz.",
        ),
        paketIcerigininFiyati(
          fiyatt: "495TL",
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
