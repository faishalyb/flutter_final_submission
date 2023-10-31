import 'package:final_submission/account/login_screen.dart';
import 'package:final_submission/account/register_screen.dart';
import 'package:flutter/material.dart';


class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              child:
              SingleChildScrollView(
                child: Image.asset(
                  "assets/png/login_register.png",
                  fit: BoxFit.fill,
                ),
              ),

              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage(
              //           "assets/png/login_register.png"
              //       ),
              //       fit: BoxFit.cover),
              // ),

            ),
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 70, top: 15)),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.teal,
                    ),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).viewInsets.bottom,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Selamat datang kembali di My-WasteBank!"),
                        SizedBox(height: 30),
                        Container(
                          height: 550,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(90),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    offset: Offset(2,2)
                                )
                              ]
                          ),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 60),
                              SizedBox(height: 15),
                              Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 10),
                                child: Text(
                                  "E-mail",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                decoration:
                                BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          offset: Offset(1,1),
                                          color: Colors.grey.withOpacity(0.5)
                                      )
                                    ]
                                ),
                                child:
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 10),
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                decoration:
                                BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          offset: Offset(1,1),
                                          color: Colors.grey.withOpacity(0.5)
                                      )
                                    ]
                                ),
                                child:
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 157, top: 7),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return Register_Screen();
                                    }));
                                  },
                                  child:  Text(
                                    "Belum punya akun? Daftar sekarang",
                                    style:
                                    TextStyle(
                                        fontSize: 11,
                                        color: Colors.green
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}