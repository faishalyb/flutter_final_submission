import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart';
var informationTextStyle = const TextStyle(fontFamily: 'Gabarito');


class Onboarding_Screen extends StatelessWidget {
  const Onboarding_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: PageView(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: SvgPicture.asset(
                        "assets/svg/onboarding1.svg",
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 700,left: 70, right: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.orange),
                          onPressed: () {},
                          child: Text(
                            "Berikutnya",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Gabarito"
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: SvgPicture.asset(
                        "assets/svg/onboarding2.svg",
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 700,left: 70, right: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.orange),
                          onPressed: () {},
                          child: Text(
                            "Berikutnya",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Gabarito"
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: SvgPicture.asset(
                        "assets/svg/onboarding3.svg",
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 600,left: 80, right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.teal),
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
                            side: BorderSide(color: Colors.teal, width: 2)
                          ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Login_Screen();
                              }));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 15
                              ),
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}