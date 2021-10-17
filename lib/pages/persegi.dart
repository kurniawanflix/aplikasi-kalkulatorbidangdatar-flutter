import 'package:flutter/material.dart';
import 'package:kalkulator_bidang_datar/theme.dart';

class Persegi extends StatefulWidget{
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  double _luas = 0;
  double _keliling = 0;
  final sisi = TextEditingController();

  void _hitungKeliling(sisi) {
    setState(() {
      _keliling = double.parse(sisi.text) * 4;
    });
  }

  void _hitungLuas(sisi) {
    setState(() {
      _luas = double.parse(sisi.text) * double.parse(sisi.text);
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
        height: 450,
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
                  new Text("Kalkulator Luas dan Keliling\nPersegi", style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold), textAlign: TextAlign.center),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Sisi'),
                      keyboardType: TextInputType.number,
                      controller: sisi,
                    ),
                  ),

                  new ElevatedButton(
                    onPressed: (){
                      _hitungLuas(sisi);
                      _hitungKeliling(sisi);
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
                    child: new Text("Hitung Luas dan Keliling Persegi"),
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