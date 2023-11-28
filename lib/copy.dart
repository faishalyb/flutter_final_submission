// return SafeArea(
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// SizedBox(width: 10),
// TextButton(
// onPressed: () async {
// EasyLoading.show(status: "Loading");
// try {
// await authService.logout();
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Screen()),
// );
// } catch (e) {
// ScaffoldMessenger.of(context).showSnackBar(
// SnackBar(content: Text("Logout failed, Please try again!"))
// );
// }
// EasyLoading.dismiss();
// },
// style: TextButton.styleFrom(
// backgroundColor: Colors.red,
// minimumSize: Size(110, 30), // Set the desired width and height
// ),
// child: Text(
// "Logout",
// style: TextStyle(
// fontFamily: "Montserrat",
// fontWeight: FontWeight.bold,
// fontSize: 20,
// color: Colors.white,
// ),
// ),
// ),
// SizedBox(width: 10),
// TextButton(
// onPressed: () async {
// try {
// await authService.check();
// } catch (e) {
// ScaffoldMessenger.of(context).showSnackBar(
// SnackBar(content: Text("Logout failed, Please try again!"))
// );
// }
// },
// style: TextButton.styleFrom(
// backgroundColor: Colors.green,
// minimumSize: Size(110, 30), // Set the desired width and height
// ),
// child: Text(
// "Check",
// style: TextStyle(
// fontFamily: "Montserrat",
// fontWeight: FontWeight.bold,
// fontSize: 20,
// color: Colors.white,
// ),
// ),
// ),
// ],
// )
// ],
// ),
// )
// );



// Stack(
//   children: <Widget>[
//     SvgPicture.asset(
//       "assets/svg/dashboard.svg",
//       width: MediaQuery.of(context).size.width,
//     ),
//     Center(
//       child: Text(
//         "My-WB",
//         textAlign: TextAlign.justify,
//         style: TextStyle(
//           color: Colors.white,
//           fontFamily: "Montserrat",
//           fontWeight: FontWeight.bold,
//           fontSize: 23,
//         ),
//       ),
//     ),
//     Text("asdjhasdkjha kjasdhkajsdh askdjha sdkjhasd")
//   ],
// ),
// Text("asdjhasdkjha kjasdhkajsdh askdjha sdkjhasd")
// ],



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YourExistingScreen extends StatefulWidget {
  @override
  _YourExistingScreenState createState() => _YourExistingScreenState();
}

class _YourExistingScreenState extends State<YourExistingScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Your existing code here
            Stack(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/svg/dashboard.svg',
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'My-WB',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Pilih material atau barang sisa dibawah ini yang anda ingin daur ulang ke Bank Sampah, atau gunakan Fitur deteksi Sampah",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Gabarito",
                            fontSize: 17),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Hi! \$name", // You need to replace \$name with the actual variable or value
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text("Test"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text("Test"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text("Test"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text("Test"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text("Test"),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
