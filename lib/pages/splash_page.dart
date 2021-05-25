import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash_wisata.png')),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo_wisata.png"))),
                ),
                // SizedBox(height: 30),
                Text("WISATA INDONESIA",
                    style: blackTextStyle.copyWith(fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Kenali Wisata Indonesia, Karena Masih Banyak\nHal Yang Belum Kamu Lihat",
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 210,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    color: purpleColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                    child: Text(
                      "Find Now",
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
