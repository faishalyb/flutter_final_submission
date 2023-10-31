import 'package:final_submission/account/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../account/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
var informationTextStyle = const TextStyle(fontFamily: 'Gabarito');


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
      backgroundColor: Colors.teal,
      body: SafeArea(
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
                Container(
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/svg/onboarding3.svg",
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 560,left: 80, right: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                "Jadilah bagian dari aksi lindungi Bumi dengan memanfaatkan dan mengelola sampah dengan benar!",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: "Gabarito",
                                    color: Colors.grey,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                ),
                Container(
                  child: SvgPicture.asset(
                    "assets/svg/onboarding1.svg",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  )
                ),
                Container(
                    child: SvgPicture.asset(
                      "assets/svg/onboarding2.svg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    )
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          child: SvgPicture.asset(
                            "assets/svg/onboarding4.svg",
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
            Visibility(
                visible: _currentPage < 3,
                child: Container(
                  padding: EdgeInsets.only(top: 650,left: 100, right: 100),
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
                            // If on the last page, navigate to a different screen (for example, Login_Screen)
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
          ],
        ),
      ),
    );
  }
}