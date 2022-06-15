import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class BesGunlukDetoks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: BesGunlukDetoksPaketi(),
      ),
      renk: Colors.white,
    );
  }
}

class BesGunlukDetoksPaketi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icerikVeFiyat(
          carouselJpg1: "5GünlükDetoksPaketi",
          carouselJpg2: "5GünlükDetoksPaketi2",
          carouselJpg3: "3GunlukDetoksPaketiBirinciGun",
          setinAdi: "5 Günlük Detoks Paketi",
          mlBilgisi: " ",
          aciklama:
              "Zamanın nasıl geçtiğini anlamadan hafiflemek ve fit bir vücuda sahip olmak isteyenler için en hızlı ve etkili çözüm! Özel günlerin öncesi veya sonrası için hayat kurtarıcı olacak bu 5 günlük detoks paketi ile tartıda en iyi sonucu görmeye hazır olun!",
        ),
        paketIcerigininFiyati(
          fiyatt: "700TL",
        ),
        icindekilerRowu(
          icerikk: "1. Gün Juice Detoks",
        ),
        icindekilerRowu(
          icerikk: "2. Gün Protein Detoks",
        ),
        icindekilerRowu(
          icerikk: "3. Gün Superfood Detoks",
        ),
        icindekilerRowu(
          icerikk: "4. Gün Meyve-Sebze Detoks",
        ),
        icindekilerRowu(
          icerikk: "5. Gün Protein Detoks",
        ),
      ],
    );
  }
}
