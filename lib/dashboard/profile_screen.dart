import 'package:flutter/material.dart';
import 'package:final_submission/rest/auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../account/login_screen.dart';  // Make sure to import your auth file or package
import 'package:shared_preferences/shared_preferences.dart';

import '../global/toast.dart';

class Profile_Screen extends StatelessWidget {
  final AuthService authService = AuthService();  // Assuming you have AuthService for managing authentication

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        if (snapshot.hasData) {
          String name = snapshot.data!.getString('name') ?? '';
          String role = snapshot.data!.getString('role') ?? '';
          return Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
              backgroundColor: Colors.lightGreen,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/jpg/profile_picture.jpg'),  // Replace with your image asset
                  ),
                  SizedBox(height: 20),
                  Text(
                    '$name',  // Replace with the actual user's name
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$role',  // Replace with the actual user's name
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton.icon(
                    onPressed: () async {
                      EasyLoading.show(status: "Loading");
                      try {
                        await authService.logout();

                        EasyLoading.dismiss();
                        succesToast(message: "Logout berhasil!");

                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => Login_Screen())
                        );
                      } catch (e) {
// Handle logout failure
                      }
                    },
                    icon: Icon(Icons.exit_to_app),
                    label: Text('Logout'),
                    style: TextButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

}



