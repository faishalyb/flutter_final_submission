import 'package:final_submission/account/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:final_submission/account/login_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


class Dashboard_Screen extends StatefulWidget {
  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {
    final AuthService authService = AuthService();
    int _currentIndex = 0;

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
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 35),
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
                          SizedBox(height: 70),
                          Text(
                            "Pilih material atau barang sisa dibawah ini yang anda ingin daur ulang ke Bank Sampah, atau gunakan Fitur deteksi Sampah",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gabarito",
                                fontSize: 17
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
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.restore_from_trash),
                  label: 'Recycle',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
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
