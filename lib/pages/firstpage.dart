import 'package:flutter/material.dart';
import 'package:kalkulator_bidang_datar/theme.dart';
import 'package:kalkulator_bidang_datar/pages/persegi.dart';
import 'package:kalkulator_bidang_datar/pages/segitiga.dart';
import 'package:kalkulator_bidang_datar/pages/lingkaran.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
            Text(
              'Kalkulator Bidang Datar\n'
                  '_________________________',
              style: blackTextStyle.copyWith(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Aplikasi perhitungan bidang datar yang dipergunakan untuk menghitung luas dan keliling suatu bidang datar',
              // textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
                wordSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // pindah ke halaman persegi
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Persegi()));
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
                child: Text(
                  'Persegi',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // pindah ke halaman segitiga
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Segitiga()));
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
                child: Text(
                  'Segitiga',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 45,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // pindah ke halaman lingkaran
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lingkaran()));
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
                child: Text(
                  'Lingkaran',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
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
