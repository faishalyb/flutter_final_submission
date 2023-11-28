import 'package:final_submission/account/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../account/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Onboarding_Screen extends StatefulWidget {
  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView(
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/1-1.svg',
                                width: 390,
                              ),
                              Container(
                                // padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(30),
                                child: Text(
                                  "Eco-Apps",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gabarito",
                                      color: Colors.white,
                                      fontSize: 50
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 280, left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        'assets/svg/1-2.svg',
                                        width: 370,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Jadilah bagian dari aksi lindungi Bumi dengan memanfaatkan dan mengelola sampah dengan benar!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Gabarito",
                                          color: Colors.grey,
                                          fontSize: 17
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: SvgPicture.asset(
                          "assets/svg/1-3.svg",
                          width: 500,
                        )
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: [
                        Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/2-1.svg',
                                width: MediaQuery.of(context).size.width,
                              ),
                              Container(
                                padding: EdgeInsets.all(30),
                                child: Text(
                                  "langkah pertama \ndari kita",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Gabarito",
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 270, left: 20, right: 20),
                                child: Column(
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        'assets/svg/2-2.svg',
                                        width: 370,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Bank Sampah",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Gabarito",
                                          color: Colors.teal,
                                          fontSize: 40
                                      ),
                                    ),
                                    Text(
                                      "Setorkan sampahmu di Bank Sampah terdekat mulai dari sekarang",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Gabarito",
                                          color: Colors.grey,
                                          fontSize: 17
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(
                            children: [
                              Positioned(
                                  top: -40,
                                  right: -20,
                                  child: SvgPicture.asset(
                                    "assets/svg/3-1.svg",
                                    width: 500,
                                  )
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.only(top: 150),
                                  child: Text(
                                    "Selamatkan \nBumi!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gabarito",
                                        color: Colors.teal,
                                        fontSize: 50
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 280, left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        'assets/svg/3-2.svg',
                                        width: 370,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Mulai dari Sekarang",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Gabarito",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal,
                                          fontSize: 30
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 0,
                        left: -37,
                        child: SvgPicture.asset(
                          "assets/svg/3-3.svg",
                          width: 500,
                        )
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Stack(
                        children: [
                          Positioned(
                              top: -1,
                              right: 0,
                              child: SvgPicture.asset(
                                "assets/svg/4-1.svg",
                                width: 150,
                              )
                          ),
                          Positioned(
                              bottom: 0,
                              left: -55,
                              child: SvgPicture.asset(
                                "assets/svg/3-3.svg",
                                width: 700,
                              )
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 70, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "eco lifestyle",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Gabarito",
                                      fontSize: 20
                                    ),
                                  ),
                                  Text(
                                    "My-WB",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "Gabarito",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60
                                    ),
                                  ),
                                ],
                              )
                            ),
                          Center(
                            child: SvgPicture.asset(
                              'assets/svg/4-2.svg',
                              width: 350,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            left: 0,
                            bottom: 90,
                            child: Container(
                              padding: EdgeInsets.only(right: 90, left: 90),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  TextButton(
                                    style: TextButton.styleFrom(backgroundColor: Colors.teal),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return Register_Screen();
                                      }));
                                    },
                                    child: Text(
                                      "Buat Akun Baru",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
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
                            ),
                          )
                        ]
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 60,
                child: Visibility(
                  visible: _currentPage < 3,
                  child: Container(
                    padding: EdgeInsets.only(left: 100, right: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: SmoothPageIndicator(
                            controller: _pageController,
                            count: 3, // Number of pages in the PageView
                            effect: JumpingDotEffect(
                                activeDotColor: Colors.teal,
                                dotColor: Colors.grey,
                                dotWidth: 7,
                                dotHeight: 7,
                                spacing: 5,
                                verticalOffset: 10
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.orange),
                          onPressed: () {
                            if (_currentPage < 3) {
                              // If not on the last page, navigate to the next page
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Login_Screen();
                              }));
                            }
                          },
                          child: Text(
                            _currentPage < 2 ? "Berikutnya" : "Selesai",
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
                  ),
                )
            ),
          ],
        )
      ),
    );
  }
}
