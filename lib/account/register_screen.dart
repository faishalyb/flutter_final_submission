import 'package:final_submission/account/login_screen.dart';
import 'package:final_submission/account/auth.dart';
import 'package:flutter/material.dart';
import 'package:final_submission/global/toast.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';




class Register_Screen extends StatefulWidget {
  const Register_Screen({Key? key}) : super(key: key);

  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {


  bool _obscureText= true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();


  AuthService authService = AuthService();



  Future<void> register() async {
    EasyLoading.show(status: 'Loading');
    final String name = nameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    final String confPassword = confPasswordController.text;
    bool registrationResult = await authService.register(name, email, password, confPassword);
    EasyLoading.dismiss();

    if (registrationResult) {
      succesToast(message: "Registrasi berhasil! \nmohon untuk Login");
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Login_Screen();
      }));
    } else {
      failedToast(message: "Registrasi Gagal! \nmohon periksa kembali!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      body: Stack(
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
                      SizedBox(height: 50),
                      Center(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Selamat datang di My-WasteBank!"),
                      SizedBox(height: 30),
                      Container(
                        height: 580,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 35),
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 10),
                              child: Text(
                                "Nama",
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
                                controller: nameController,
                                decoration: InputDecoration(
                                  hintText: "Masukkan Nama Lengkap",
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
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: "Masukkan E-Mail valid",
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
                                controller: passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  hintText: "Masukkan password kamu",
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
                                    onPressed: (){
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                    },
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 10),
                              child: Text(
                                "Confirm Password",
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
                                controller: confPasswordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                    hintText: "Konfirmasi password kamu",
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
                                      onPressed: (){
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 157, top: 1),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return Login_Screen();
                                  }));
                                },
                                child:  Text(
                                  "Sudah punya akun? Login sekarang",
                                  style:
                                  TextStyle(
                                      fontSize: 11,
                                      color: Colors.green
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Center(
                              child: Container(
                                child: TextButton(
                                  onPressed: () {
                                    register();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green[400],
                                    minimumSize: Size(150, 50), // Set the desired width and height
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Text(
                                    "Daftar",
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
            padding: EdgeInsets.only(left: 10, top: 30),
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
    );
  }
}