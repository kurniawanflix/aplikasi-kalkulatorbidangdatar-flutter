import 'package:flutter/material.dart';
import 'package:kalkulator_bidang_datar/theme.dart';

class Lingkaran extends StatefulWidget{
  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran>{
  double _luas = 0;
  double _keliling = 0;
  double phi = 3.14;
  final jariJari = TextEditingController();
  final panjang = TextEditingController();
  final lebar = TextEditingController();

  void _hitungLuas(jariJari){

    setState(() {
      _luas = (double.parse(jariJari.text)*double.parse(jariJari.text)*phi);
    });
  }

  void _hitungKeliling(jariJari) {
    setState(() {
      _keliling = (double.parse(jariJari.text)*phi)*2;
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
                  new Text("Kalkulator Luas dan Keliling\nLingkaran", style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,), textAlign: TextAlign.center ),

                  new SizedBox(
                    width: double.infinity,
                    child: new TextFormField(
                      decoration: new InputDecoration(hintText: 'Jari-Jari'),
                      keyboardType: TextInputType.number,
                      controller: jariJari,
                    ),
                  ),

                  new ElevatedButton(
                    onPressed: (){
                      _hitungLuas(jariJari);
                      _hitungKeliling(jariJari);
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
                    child: new Text("Hitung Luas dan Keliling Lingkaran"),
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