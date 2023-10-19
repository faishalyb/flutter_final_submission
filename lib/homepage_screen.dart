import 'package:flutter/material.dart';
var informationTextStyle = const TextStyle(fontFamily: 'Gabarito');

class Homepage_Screen extends StatelessWidget{
  const Homepage_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 100,left: 50),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Go Green",
                        style: informationTextStyle,
                      ),
                      Text("Selamatkan bumi kita")
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: 100, left: 50, right: 50),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/png/artboard.png",
                        width: 270,
                        height: 290,
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10)
                      ),
                      Text(
                          "Aplikasi bank sampah yang dapat meringankan pekerjaan anda",
                          textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:15, left: 80, right: 80),
                  height: 60,
                  child: TextButton(
                    style:
                    TextButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: Text(
                      "Buat Akun Baru",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    ),
                ),
                ),
                Container(
                    padding: EdgeInsets.only(top:15, left: 80, right: 80),
                    height: 60,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.green, width: 2)
                      ),
                      onPressed: () {},
                      child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15
                          )
                      ),

                    ),
                )
              ],
            )
        )
    );
  }
}