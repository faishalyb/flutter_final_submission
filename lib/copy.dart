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



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class YourExistingScreen extends StatefulWidget {
//   @override
//   _YourExistingScreenState createState() => _YourExistingScreenState();
// }
//
// class _YourExistingScreenState extends State<YourExistingScreen> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Your existing code here
//             Stack(
//               children: <Widget>[
//                 SvgPicture.asset(
//                   'assets/svg/dashboard.svg',
//                   width: MediaQuery.of(context).size.width,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 15, right: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       SizedBox(height: 20),
//                       Center(
//                         child: Text(
//                           'My-WB',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: 'Montserrat',
//                             fontWeight: FontWeight.bold,
//                             fontSize: 25,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 70),
//                       Text(
//                         "Pilih material atau barang sisa dibawah ini yang anda ingin daur ulang ke Bank Sampah, atau gunakan Fitur deteksi Sampah",
//                         textAlign: TextAlign.justify,
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: "Gabarito",
//                             fontSize: 17),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               padding: EdgeInsets.all(25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Text(
//                     "Hi! \$name", // You need to replace \$name with the actual variable or value
//                     style: TextStyle(
//                         fontFamily: "Montserrat",
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.teal),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(color: Colors.red),
//                         child: Text("Test"),
//                       ),
//                       SizedBox(width: 10),
//                       Container(
//                         decoration: BoxDecoration(color: Colors.red),
//                         child: Text("Test"),
//                       ),
//                       SizedBox(width: 10),
//                       Container(
//                         decoration: BoxDecoration(color: Colors.red),
//                         child: Text("Test"),
//                       ),
//                       SizedBox(width: 10),
//                       Container(
//                         decoration: BoxDecoration(color: Colors.red),
//                         child: Text("Test"),
//                       ),
//                       SizedBox(width: 10),
//                       Container(
//                         decoration: BoxDecoration(color: Colors.red),
//                         child: Text("Test"),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: 'Explore',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }




// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:wisatabandung/model/tourism_place.dart';
//
// var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
//
// class DetailScreen extends StatelessWidget {
//   final TourismPlace place;
//
//   const DetailScreen({Key? key, required this.place}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         if (constraints.maxWidth > 800) {
//           return DetailWebPage(place: place);
//         } else {
//           return DetailMobilePage(place: place);
//         }
//       },
//     );
//   }
// }
//
// class DetailMobilePage extends StatelessWidget {
//   final TourismPlace place;
//
//   const DetailMobilePage({Key? key, required this.place}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Image.asset(place.imageAsset),
//                 SafeArea(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.grey,
//                           child: IconButton(
//                             icon: const Icon(
//                               Icons.arrow_back,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                           ),
//                         ),
//                         const FavoriteButton(),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 16.0),
//               child: Text(
//                 place.name,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 30.0,
//                   fontFamily: 'Staatliches',
//                 ),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[
//                       const Icon(Icons.calendar_today),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         place.openDays,
//                         style: informationTextStyle,
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: <Widget>[
//                       const Icon(Icons.access_time),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         place.openTime,
//                         style: informationTextStyle,
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: <Widget>[
//                       const Icon(Icons.monetization_on),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         place.ticketPrice,
//                         style: informationTextStyle,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 place.description,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 16.0,
//                   fontFamily: 'Oxygen',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 150,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: place.imageUrls.map((url) {
//                   return Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(url),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class DetailWebPage extends StatefulWidget {
//   final TourismPlace place;
//
//   const DetailWebPage({Key? key, required this.place}) : super(key: key);
//
//   @override
//   _DetailWebPageState createState() => _DetailWebPageState();
// }
//
// class _DetailWebPageState extends State<DetailWebPage> {
//   final _scrollController = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       appBar: kIsWeb ? null : AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 16,
//           horizontal: 64,
//         ),
//         child: Center(
//           child: SizedBox(
//             width: screenWidth <= 1200 ? 800 : 1200,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   'Wisata Bandung',
//                   style: TextStyle(
//                     fontFamily: 'Staatliches',
//                     fontSize: 32,
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           ClipRRect(
//                             child: Image.asset(widget.place.imageAsset),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           const SizedBox(height: 16),
//                           Scrollbar(
//                             controller: _scrollController,
//                             child: Container(
//                               height: 150,
//                               padding: const EdgeInsets.only(bottom: 16),
//                               child: ListView(
//                                 controller: _scrollController,
//                                 scrollDirection: Axis.horizontal,
//                                 children: widget.place.imageUrls.map((url) {
//                                   return Padding(
//                                     padding: const EdgeInsets.all(4.0),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.network(url),
//                                     ),
//                                   );
//                                 }).toList(),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 32),
//                     Expanded(
//                       child: Card(
//                         child: Container(
//                           padding: const EdgeInsets.all(16),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Text(
//                                 widget.place.name,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(
//                                   fontSize: 30.0,
//                                   fontFamily: 'Staatliches',
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(
//                                     children: <Widget>[
//                                       const Icon(Icons.calendar_today),
//                                       const SizedBox(width: 8.0),
//                                       Text(
//                                         widget.place.openDays,
//                                         style: informationTextStyle,
//                                       ),
//                                     ],
//                                   ),
//                                   const FavoriteButton(),
//                                 ],
//                               ),
//                               Row(
//                                 children: <Widget>[
//                                   const Icon(Icons.access_time),
//                                   const SizedBox(width: 8.0),
//                                   Text(
//                                     widget.place.openTime,
//                                     style: informationTextStyle,
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 8.0),
//                               Row(
//                                 children: <Widget>[
//                                   const Icon(Icons.monetization_on),
//                                   const SizedBox(width: 8.0),
//                                   Text(
//                                     widget.place.ticketPrice,
//                                     style: informationTextStyle,
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                                 child: Text(
//                                   widget.place.description,
//                                   textAlign: TextAlign.justify,
//                                   style: const TextStyle(
//                                     fontSize: 16.0,
//                                     fontFamily: 'Oxygen',
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
// }
//
// class FavoriteButton extends StatefulWidget {
//   const FavoriteButton({Key? key}) : super(key: key);
//
//   @override
//   _FavoriteButtonState createState() => _FavoriteButtonState();
// }
//
// class _FavoriteButtonState extends State<FavoriteButton> {
//   bool isFavorite = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         isFavorite ? Icons.favorite : Icons.favorite_border,
//         color: Colors.red,
//       ),
//       onPressed: () {
//         setState(() {
//           isFavorite = !isFavorite;
//         });
//       },
//     );
//   }
// }









import 'package:final_submission/account/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home_Screen extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        if (snapshot.hasData) {
          String name = snapshot.data!.getString('name') ?? '';
          String sessionID = snapshot.data!.getString('sessionID') ?? '';
          return Scaffold(
            body: Column(
              children: [
                Stack(
                  children: <Widget>[
                    SvgPicture.asset(
                        'assets/svg/dashboard.svg',
                        width: MediaQuery.of(context).size.width
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 40),
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
                          SizedBox(height: 60),
                          Text(
                            "Pilih material atau barang sisa dibawah ini yang anda ingin daur ulang ke Bank Sampah, atau gunakan Fitur deteksi Sampah",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gabarito",
                                fontSize: 16
                            ),
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
                          "Hi! $name",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                          ),
                        ),
                        SizedBox(height: 30),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              // MY CODE
                            ]
                          ),
                        )
                      ],
                    )
                ),
                Container(
                  padding: EdgeInsets.only(top: 2, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Gunakan Fitur Utama",
                      ),
                      // TODO WITH CAMERA ICON AND COULD BE TAKE A PICTURE AND SELECT FROM FILES
                    ],
                  ),
                )

              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}