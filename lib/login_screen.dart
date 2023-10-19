import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Login_Screen extends StatelessWidget{
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 120),
              child: SvgPicture.asset(
                  "assets/svg/recycle-6-svgrepo-com.svg",
                  width: 250,
                  height: 250,
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Email"),
                  Padding(
                      padding: EdgeInsets.all(10.0)
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'emailkamu@gmail.com',
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0)
                  ),
                  Text("Password"),
                  Padding(padding: EdgeInsets.all(10.0)
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '***************',
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
      )
    );
  }
}