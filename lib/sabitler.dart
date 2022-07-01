import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'anaSayfa.dart';

class ExpandedWidget extends StatelessWidget {
  String? jpgDosyasi;
  String? jpgAdi;
  String? fiyatBilgisi;
  final void Function()? onPress;
  ExpandedWidget(
      {this.jpgDosyasi, this.jpgAdi, this.fiyatBilgisi, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: 200,
          height: 200,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Image.asset("assets/images/$jpgDosyasi.jpg",
                    fit: BoxFit.cover),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                flex: 2,
                child:
                    ElevatedButton(onPressed: onPress, child: Text("$jpgAdi")),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "$fiyatBilgisi",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          )),
    );
  }
}

class MaterialAppp extends StatelessWidget {
  final Widget? bodyKismi;
  final Color? renk;
  MaterialAppp({this.bodyKismi, this.renk});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AnaSayfa()));
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            activeColor: Colors.red,
            inactiveColor: Colors.white,
            backgroundColor: Colors.black,
            gapLocation: GapLocation.center,
            icons: [Icons.arrow_back, Icons.history],
            activeIndex: 1,
            onTap: (int) {
              Navigator.pop(context);
            }),
        backgroundColor: renk,
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "For building a Better Life",
            )),
        body: SingleChildScrollView(child: bodyKismi),
      ),
    );
  }
}

class titleYazilari extends StatelessWidget {
  final Widget? titleKismi;

  titleYazilari({this.titleKismi});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          color: Color.fromARGB(136, 52, 150, 68),
          child: Center(
            child: Text(
              "Kaan Göçer",
              style: TextStyle(fontSize: 25, fontFamily: "MsMadi"),
            ),
          ),
        ),
        Container(
            width: double.infinity,
            color: Color.fromARGB(136, 52, 150, 68),
            child: Center(
                child: Text("Healthy Life Coach",
                    style: TextStyle(fontSize: 20)))),
        SizedBox(
          height: 35,
        ),
        Container(child: titleKismi),
      ],
    );
  }
}

class icindekilerRowu extends StatelessWidget {
  String? icerikk;
  icindekilerRowu({this.icerikk});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(Icons.chevron_right), Text("$icerikk")],
    );
  }
}

class icerikVeFiyat extends StatelessWidget {
  String? carouselJpg1,
      carouselJpg2,
      carouselJpg3,
      setinAdi,
      mlBilgisi,
      aciklama;
  icerikVeFiyat(
      {this.carouselJpg1,
      this.carouselJpg2,
      this.carouselJpg3,
      this.setinAdi,
      this.mlBilgisi,
      this.aciklama});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 250,
            height: 250,
            child: Carousel(
              images: [
                Image.asset(
                  "assets/images/$carouselJpg1.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/$carouselJpg2.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/$carouselJpg3.jpg",
                  fit: BoxFit.cover,
                )
              ],
              dotSize: 6,
              dotSpacing: 12.0,
              dotColor: Colors.lightGreenAccent,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.purple.withOpacity(0.5),
              borderRadius: true,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: true,
            ),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: Container(
            width: 150,
            child: Column(
              children: [
                Container(
                  child: Text(
                    "$setinAdi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(child: Text("$mlBilgisi")),
                Container(
                  width: 150,
                  child: Text(
                    "$aciklama",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class paketIcerigininFiyati extends StatelessWidget {
  String? fiyatt;
  paketIcerigininFiyati({this.fiyatt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Paket İçeriği: ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "$fiyatt",
          style: TextStyle(
              fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class BeslenmePaketleriContainer extends StatelessWidget {
  String? beslenmePaketJpg,
      beslenmePaketAdi,
      beslenmePaketAciklama,
      beslenmePaketFiyat;
  final void Function()? tiklandiginda;

  BeslenmePaketleriContainer(
      {this.beslenmePaketJpg,
      this.tiklandiginda,
      this.beslenmePaketAciklama,
      this.beslenmePaketFiyat,
      this.beslenmePaketAdi});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          child: FlatButton(
              highlightColor: Colors.white,
              splashColor: Colors.white,
              onPressed: tiklandiginda,
              child: Image.asset("assets/images/$beslenmePaketJpg.jpg")),
        ),
        Container(
            width: 200,
            child: Text(
              "$beslenmePaketAdi",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            )),
        SizedBox(height: 8),
        Container(
            width: 200,
            child: Text(
              "$beslenmePaketAciklama",
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            )),
        SizedBox(height: 8),
        Container(
            width: 200,
            child: Text(
              "$beslenmePaketFiyat",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}

class TarifColumn extends StatelessWidget {
  String? tarifJpg, tarifAdi;
  final void Function()? tariflerOnPress;

  TarifColumn({this.tarifJpg, this.tarifAdi, this.tariflerOnPress});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Text(
          "$tarifAdi",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              backgroundColor: Colors.black),
        )),
        SizedBox(height: 8),
        Container(
            child: FlatButton(
                onPressed: tariflerOnPress,
                child: Image.asset("assets/images/$tarifJpg.jpg"))),
        SizedBox(height: 70),
        Container(
            width: 400,
            child: Divider(
              color: Colors.black,
              height: 25,
            )),
        SizedBox(height: 70),
      ],
    );
  }
}

class TariflerIcerik extends StatelessWidget {
  String? kisiSayisi, pisirmeSuresi, tariflerIcerikJpg, tariflerAciklama;
  TariflerIcerik(
      {this.kisiSayisi,
      this.pisirmeSuresi,
      this.tariflerIcerikJpg,
      this.tariflerAciklama});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(child: Image.asset("assets/images/$tariflerIcerikJpg.jpg")),
        Container(
            child: Text(
          "Kişi Sayısı: $kisiSayisi | Pişirme Süresi: $pisirmeSuresi",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 12,
        ),
        Container(
          child: Text("$tariflerAciklama"),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          child: Text("Malzemeler:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }
}

class TariflerMalzemeler extends StatelessWidget {
  String? tariflerMalzeme;

  TariflerMalzemeler({this.tariflerMalzeme});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Icon(Icons.subdirectory_arrow_right),
        Text("$tariflerMalzeme"),
      ],
    ));
  }
}

class tariflerHazirlanisContainer extends StatelessWidget {
  String? tariflerHazirlanisAciklama;

  tariflerHazirlanisContainer({this.tariflerHazirlanisAciklama});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$tariflerHazirlanisAciklama"),
    );
  }
}

ButtonStyle styleForm() => ElevatedButton.styleFrom(primary: Colors.white);
TextStyle textRenk() => TextStyle(color: Colors.black);

class OnerilerColumn extends StatelessWidget {
  String? oneriJpg, oneriJpgAdi;
  final void Function()? onPressOneri;

  OnerilerColumn({this.oneriJpg, this.oneriJpgAdi, this.onPressOneri});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Color.fromARGB(255, 130, 136, 141),
          child: Image.asset(
            "assets/images/$oneriJpg.jpg",
            fit: BoxFit.cover,
          ),
        ),
        ElevatedButton(
          onPressed: onPressOneri,
          child: Container(
            margin: EdgeInsets.all(5),
            width: 160,
            height: 35,
            child: Text(
              "$oneriJpgAdi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            color: Color.fromARGB(255, 26, 101, 112),
          ),
        ),
      ],
    );
  }
}

class GestureContainer extends StatelessWidget {
  String? rakam;
  Color? renk;

  GestureContainer({this.rakam, this.renk});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 137,
      height: 185,
      color: renk,
      child: Center(
        child: Text(
          "$rakam",
          style: TextStyle(fontSize: 80),
        ),
      ),
    );
  }
}
