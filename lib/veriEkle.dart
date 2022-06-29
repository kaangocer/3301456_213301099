import 'package:flutter/material.dart';

import 'SqflitePages/SqfliteAnaSayfa.dart';

class VeriEkle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sqflite deneme",
      home: SqfliteAnaSayfa(),
    );
  }
}
