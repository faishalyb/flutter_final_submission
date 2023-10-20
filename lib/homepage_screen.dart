import 'package:flutter/material.dart';
import 'login_screen.dart';
var informationTextStyle = const TextStyle(fontFamily: 'Gabarito');

class Homepage_Screen extends StatelessWidget{
  const Homepage_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top:100, left: 57),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Go Green",
                                style: informationTextStyle,
                              ),
                              Text(
                                  "Selamatkan bumi kita"
                              ),
                            ],
                          )
                      ),
                      Image.asset(
                        "assets/png/bg1.png",
                        width: 200,
                        height: 300,
                        alignment: Alignment.topRight,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/png/artboard.png",
                        width: 270,
                        height: 270,
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
                  margin: EdgeInsets.only(left: 80, right: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextButton(
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
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.green, width: 2)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Login_Screen();
                          }));
                        },
                        child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 15
                            )
                        ),
                      ),
                    ],
                  )
                ),
              ],
            )
        )
    );
  }
}