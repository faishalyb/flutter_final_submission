import 'package:final_submission/account/login_screen.dart';
import 'package:final_submission/account/register_screen.dart';
import 'package:flutter/material.dart';



class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool _obscureText = true;

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
                        SizedBox(height: 100),
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
                          height: 450,
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
                              SizedBox(height: 55),
                              Padding(
                                padding: EdgeInsets.only(left: 30, bottom: 10),
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
                                    hintText: "Masukkan Email",
                                    hintStyle: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey
                                    ),
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
                                padding: EdgeInsets.only(left: 30, bottom: 10),
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
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan Password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10
                                    ),
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
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _obscureText ? Icons.visibility : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    )
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
                              SizedBox(height: 35),
                              Center(
                                  child: Container(
                                      child: TextButton(
                                        onPressed: () {
                                          // Add the action you want to perform when the TextButton is pressed.
                                          // For example, you can navigate to a new screen or perform some action.
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.green[400],
                                          minimumSize: Size(150, 50), // Set the desired width and height
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                        ),
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // BACK BUTTON
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: CircleAvatar(
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
            ),
          ],
        ),
      ),
    );
  }
}


