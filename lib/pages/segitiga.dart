import 'package:flutter/material.dart';
import 'package:kalkulator_bidang_datar/theme.dart';

class Segitiga extends StatefulWidget{
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga>{
  double _luas = 0;
  double _keliling = 0;
  final sisi1 = TextEditingController();
  final sisi2 = TextEditingController();
  final sisi3 = TextEditingController();
  final alas = TextEditingController();
  final tinggi = TextEditingController();

  void _hitungLuas(alas,tinggi){

    setState(() {
      _luas = (double.parse(alas.text)*double.parse(tinggi.text))/2.0;
    });
  }

  void _hitungKeliling(sisi1,sisi2,sisi3){

    setState(() {
      _keliling = double.parse(sisi1.text)+double.parse(sisi2.text)+double.parse(sisi3.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      return Expanded(
        child: Center(
          child: Container(
            width: 280,
            height: 154,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/kalkulator.png',
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget buildBottomSheet() {
      return Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Kalkulator Luas dan Keliling Segitiga", style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Alas'),
                      keyboardType: TextInputType.number,
                      controller: alas,
                    ),
                  ),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Tinggi'),
                      keyboardType: TextInputType.number,
                      controller: tinggi,
                    ),
                  ),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Sisi 1'),
                      keyboardType: TextInputType.number,
                      controller: sisi1,
                    ),
                  ),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Sisi 2'),
                      keyboardType: TextInputType.number,
                      controller: sisi2,
                    ),
                  ),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Sisi 3'),
                      keyboardType: TextInputType.number,
                      controller: sisi3,
                    ),
                  ),

                  new ElevatedButton(
                    onPressed: (){
                      _hitungLuas(alas,tinggi);
                      _hitungKeliling(sisi1,sisi2,sisi3);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kYellowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(11),
                          topRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                          bottomRight: Radius.circular(11),
                        ),
                      ),
                    ),
                    child: new Text("Hitung Luas dan Keliling Segitiga"),
                  ),
                  new Text(
                    'Luas = $_luas',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  new Text(
                    'Keliling = $_keliling',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildImage(),
          buildBottomSheet(),
        ],
      ),
    );
  }
}