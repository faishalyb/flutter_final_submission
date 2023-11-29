import 'package:final_submission/dashboard/recyle_screen.dart';
import 'package:final_submission/rest/auth.dart';
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
            body: SingleChildScrollView(
              child: Column(
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
                          SizedBox(height: 30),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    child: Image.asset("assets/jpg/alumunium.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/Carton.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/paper and cardboard.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/plastic.jpeg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/styrofoam.jpeg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/textiles.jpeg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/glass.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Gunakan Fitur Utama",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                          ),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Recycle_Screen())
                            );
                            // Tindakan yang ingin dilakukan saat gambar ditekan
                            print('Gambar ditekan!');
                          },
                          splashColor: Colors.teal, // Warna efek saat ditekan
                          child: Image.asset(
                            'assets/png/Artboard 1.png',
                            width: 100,
                            height: 85,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
