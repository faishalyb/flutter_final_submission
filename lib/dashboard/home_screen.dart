import 'package:final_submission/account/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home_Screen extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        if (snapshot.hasData) {
          String name = snapshot.data!.getString('name') ?? '';
          String sessionID = snapshot.data!.getString('sessionID') ?? '';
          return Scaffold(
            body: Column(
              children: [
                Stack(
                  children: <Widget>[
                    SvgPicture.asset(
                        'assets/svg/dashboard.svg',
                        width: MediaQuery.of(context).size.width
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 40),
                          Center(
                            child: Text(
                              'My-WB',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(height: 60),
                          Text(
                            "Pilih material atau barang sisa dibawah ini yang anda ingin daur ulang ke Bank Sampah, atau gunakan Fitur deteksi Sampah",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gabarito",
                                fontSize: 16
                            ),)
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "Hi! $name",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red
                              ),
                              child: Text("Test"),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red
                              ),
                              child: Text("Test"),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red
                              ),
                              child: Text("Test"),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red
                              ),
                              child: Text("Test"),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red
                              ),
                              child: Text("Test"),
                            ),
                          ],
                        )
                      ],
                    )
                )
              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
