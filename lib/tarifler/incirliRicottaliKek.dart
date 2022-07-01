import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class IncirliRicottaliKek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: IncirliRicottaliKekTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class IncirliRicottaliKekTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "IncirliRicottaliKekYakindan",
          kisiSayisi: "6-8",
          pisirmeSuresi: "45-50 Dakika",
          tariflerAciklama:
              "Yine çok hoşuma giden bir tarif,denemenizi kesinlikle tavsiye ediyorum",
        ),
        TariflerMalzemeler(tariflerMalzeme: "Yumurta (Oda Sıcaklığında)"),
        TariflerMalzemeler(
            tariflerMalzeme: "6 Yemek Kaşığı Dolusu Ricotta(Oda Sıcaklığında)"),
        TariflerMalzemeler(tariflerMalzeme: "1 Muz(Ezilmiş)"),
        TariflerMalzemeler(tariflerMalzeme: "200 gr Badem Unu"),
        TariflerMalzemeler(tariflerMalzeme: "1 Yemek Kaşığı Bal"),
        TariflerMalzemeler(
            tariflerMalzeme: "2 Yemek Kaşığı Hindistan Cevizi Şekeri"),
        TariflerMalzemeler(tariflerMalzeme: "4 İri Taze İncir"),
        TariflerMalzemeler(tariflerMalzeme: "25 Çiğ Badem(süsleme)"),
        SizedBox(height: 12),
        Container(
          child: Text("Hazırlanışı:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "1.)Yumurtaların sarısını beyazından ayırdıktan sonra diğer malzemelerle iyice karıştırdık."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Ayrı bi kapta beyazları köpük olana kadar çırptık."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Diğer karışıma az az ekleyerek hepsini birleştirdik. "),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "4.)Kalıba fırın kağıdını yerleştirip karışımı döktük."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama: "5.)Dilimlediğimiz incirleri dizdik. "),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "6.)160 derece fırında yaklaşık 45-50 dk pişti."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "7.)Çıktıktan sonra kabukları çıkarılmış ve ikiye bölünmüş bademle süsledik."),
      SizedBox(height:70)],
    );
  }
}
