import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class Beslenme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: BeslenmePaketleri(),
      ),
      renk: Colors.white,
    );
  }
}

class BeslenmePaketleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: BeslenmePaketleriContainer(
                beslenmePaketJpg: "ProteinPlusPaketi",
                beslenmePaketAdi: "Protein Plus Paketi",
                tiklandiginda: () {},
                beslenmePaketAciklama:
                    "Protein Plus Paketi ile yağ yakımınız hızlanırken hafifleyebilir, tüm gün tok ve enerjik hissedebilirsiniz.",
                beslenmePaketFiyat: "735TL",
              ),
            ),
            Expanded(
              child: BeslenmePaketleriContainer(
                beslenmePaketJpg: "1HaftalikFitPaket",
                beslenmePaketAdi: "1 Haftalık Fit Paket",
                tiklandiginda: () {},
                beslenmePaketAciklama:
                    "Nereye giderseniz gidin yanınızda götürebileceğiniz 1 Haftalık Fit Paket ile tok kalarak hızlı bir şekilde hafifleyebilirsiniz!",
                beslenmePaketFiyat: "1000TL",
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BeslenmePaketleriContainer(
                beslenmePaketJpg: "1HaftalikVejetaryenFitPaket",
                beslenmePaketAdi: "1 Haftalık Vejetaryen Fit Paket",
                tiklandiginda: () {},
                beslenmePaketAciklama:
                    "Fit bir vücuda sahip olmanın keyfini çıkarın!",
                beslenmePaketFiyat: "1100TL",
              ),
            ),
            Expanded(
              child: BeslenmePaketleriContainer(
                beslenmePaketJpg: "1HaftalikVeganFitPaket",
                beslenmePaketAdi: "1 Haftalık Vegan Fit Paket",
                tiklandiginda: () {},
                beslenmePaketAciklama:
                    "Kendi özel tariflerimizden oluşan, birbirinden lezzetli detoks ve fit menülerimizin yanında; metabolizmanızı hızlandıracak özel çaylarımızla lezzetin ve fit bir vücuda sahip olmanın keyfini çıkarın!",
                beslenmePaketFiyat: "1100TL",
              ),
            )
          ],
        ),
      ],
    );
  }
}
