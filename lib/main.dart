import 'package:flutter/material.dart';
import 'package:kalkulator_bidang_datar/pages/firstpage.dart';
import 'package:kalkulator_bidang_datar/pages/persegi.dart';
import 'package:kalkulator_bidang_datar/pages/segitiga.dart';
import 'package:kalkulator_bidang_datar/pages/lingkaran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: <String, WidgetBuilder>{
        '/persegi' : (BuildContext context) => new Persegi(),
        '/segitiga' : (BuildContext context) => new Segitiga(),
        '/lingkaran' : (BuildContext context) => new Lingkaran(),
      },
    );
  }
}

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        body: new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Image.asset('assets/icon.png'),
                new Text("Kalkulator Bangun Ruang",style: new TextStyle(fontSize: 30.0),),
              ],
            )
        )
    );
  }