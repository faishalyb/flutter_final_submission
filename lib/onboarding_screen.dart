import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding_Screen extends StatelessWidget {
  const Onboarding_Screen({Key? key}) : super(key: key);
  final String assetName = ('assets/svg/onboarding1.svg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
                child: SvgPicture.asset(
                  assetName,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                )
            )
          ],
        ),
      )
    );
  }
}