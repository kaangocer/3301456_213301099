import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:healthylifecoach/anaSayfa.dart';
import 'package:healthylifecoach/endekseGoreOneri.dart';
import 'package:healthylifecoach/services/dbhelper.dart';

import '../models/bilgiler.dart';

class SqfliteAnaSayfa extends StatefulWidget {
  const SqfliteAnaSayfa({Key? key}) : super(key: key);

  @override
  State<SqfliteAnaSayfa> createState() => _SqfliteAnaSayfaState();
}

class _SqfliteAnaSayfaState extends State<SqfliteAnaSayfa> {
  final dbHelper = DatabaseHelper.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Bilgi> bilgiler = [];
  List<Bilgi> bilgiName = [];

  TextEditingController tarihController = TextEditingController();
  TextEditingController kiloController = TextEditingController();
  TextEditingController boyController = TextEditingController();

  TextEditingController queryController = TextEditingController();
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController tarihUpdateController = TextEditingController();
  TextEditingController kiloUpdateController = TextEditingController();
  TextEditingController boyUpdateController = TextEditingController();
  TextEditingController idDeleteController = TextEditingController();
  void _showMessageInScaffold(String message) {
    _scaffoldKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AnaSayfa()));
            },
            child: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
              activeColor: Colors.red,
              inactiveColor: Colors.white,
              backgroundColor: Colors.black,
              gapLocation: GapLocation.center,
              icons: [Icons.arrow_back, Icons.history],
              activeIndex: 1,
              onTap: (int) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Endeks()));
              }),
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text("Build For a Better Life"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Ekle",
              ),
              Tab(
                text: "Veriler",
              ),
              Tab(
                text: "Arama",
              ),
              Tab(
                text: "Update",
              ),
              Tab(
                text: "Sil",
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: tarihController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Tarih"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: kiloController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Kilo"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: boyController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Boy"),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String tarih = tarihController.text;
                        int kilo = int.parse(kiloController.text);
                        int boy = int.parse(boyController.text);
                        _insert(tarih, kilo, boy);
                      },
                      child: Text("Detayları Ekle"),
                    )
                  ]),
                ),
              ),
              Container(
                  child: ListView.builder(
                      padding: EdgeInsets.all(8),
                      itemCount: bilgiler.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == bilgiler.length) {
                          return ElevatedButton(
                              child: Text("Yenile"),
                              onPressed: () {
                                setState(() {
                                  _queryAll();
                                });
                              });
                        }
                        return Container(
                            height: 40,
                            child: Center(
                                child: Text(
                              "[${bilgiler[index].id}] -- ${bilgiler[index].tarih} - Kilo ${bilgiler[index].kilo} - Boy ${bilgiler[index].boy}",
                              style: TextStyle(fontSize: 18),
                            )));
                      })),
              Center(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Tarih"),
                      onChanged: (text) {
                        if (text.length >= 2) {
                          setState(() {
                            _query(text);
                          });
                        } else {
                          setState(() {
                            bilgiName.clear();
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      child: ListView.builder(
                        padding: EdgeInsets.all(8),
                        itemCount: bilgiName.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 50,
                            margin: EdgeInsets.all(2),
                            child: Center(
                                child: Text(
                              "[${bilgiName[index].id}] -- ${bilgiName[index].tarih} - Kilo ${bilgiName[index].kilo}-Boy ${bilgiler[index].boy}}",
                              style: TextStyle(fontSize: 18),
                            )),
                          );
                        },
                      ),
                    ),
                  )
                ]),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: idUpdateController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "ID"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: tarihUpdateController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Tarih"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: kiloUpdateController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Kilo"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: boyUpdateController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Boy"),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        int id = int.parse(idUpdateController.text);
                        String tarih = tarihUpdateController.text;
                        int kilo = int.parse(kiloUpdateController.text);
                        int boy = int.parse(boyUpdateController.text);
                        _update(id, tarih, kilo, boy);
                      },
                      child: Text("Güncelle"),
                    )
                  ]),
                ),
              ),
              Center(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "ID"),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int id = int.parse(idDeleteController.text);

                      _delete(id);
                    },
                    child: Text("Sil"),
                  )
                ]),
              ),
            ],
          ),
        ));
  }

  void _insert(String tarih, int kilo, int boy) async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnTarih: tarih,
      DatabaseHelper.columnKilo: kilo,
      DatabaseHelper.columnBoy: boy,
    };

    Bilgi bilgi = Bilgi.fromMap(row);
    final id = await dbHelper.insert(bilgi);
    _showMessageInScaffold("Bilgi eklendi : $id");
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    bilgiler.clear();
    for (var row in allRows) {
      bilgiler.add(Bilgi.fromMap(row));
    }
    _showMessageInScaffold("Sorgu yapıldı.");
    setState(() {});
  }

  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    bilgiName.clear();
    allRows.forEach((row) => bilgiName.add(Bilgi.fromMap(row)));
  }

  void _update(int id, String tarih, int kilo, int boy) async {
    Bilgi bilgi = Bilgi(id: id, tarih: tarih, kilo: kilo, boy: boy);
    final rowsAffected = await dbHelper.update(bilgi);
    _showMessageInScaffold("Güncellendi $rowsAffected satır(lar)");
  }

  void _delete(int id) async {
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold("Silindi $rowsDeleted satır(lar): satır $id");
  }
}
