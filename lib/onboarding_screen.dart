import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart';
var informationTextStyle = const TextStyle(fontFamily: 'Gabarito');


class Onboarding_Screen extends StatelessWidget {
  const Onboarding_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
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
                  )
                ],
              ),
            ),
            Container(

            ),
          ],
        ),
      )
    );
  }
}