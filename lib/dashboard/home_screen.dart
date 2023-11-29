import 'package:final_submission/account/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;


class Home_Screen extends StatelessWidget {
  final AuthService authService = AuthService();

  Future<File?> _takePicture() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return File(image.path);
    } else {
      return null;
    }
  }

  Future<File?> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    } else {
      return null;
    }
  }


  Future<void> _detectTrash(File inputImageFile) async {
    if (inputImageFile != null) {
      try {
        // Kirim gambar ke API menggunakan form-data
        var request = http.MultipartRequest(
          'POST',
          Uri.parse('https://ml-api-ilhkkpshpa-uc.a.run.app/predict'),
        );
        request.files.add(
          await http.MultipartFile.fromPath(
            'image',
            inputImageFile.path,
          ),
        );

        // Kirim permintaan dan terima respons
        var response = await request.send();
        var responseData = await response.stream.toBytes();
        var responseString = String.fromCharCodes(responseData);

        // Handle response
        if (response.statusCode == 200) {
          // Respons sukses, lakukan sesuatu dengan respons JSON
          Map<String, dynamic> data = jsonDecode(responseString);
          print('Response from API: $data');
          // Tampilkan respons ke pengguna sesuai kebutuhan
        } else {
          // Respons gagal, handle kesalahan
          print('Failed to detect trash. Status code: ${response.statusCode}');
        }
      } catch (e) {
        // Tangani kesalahan koneksi atau lainnya
        print('Error: $e');
      }
    }
  }

  Future<void> _pickAndDetectTrash() async {
    File? imageFile = await _pickImage();
    if (imageFile != null) {
      await _detectTrash(imageFile);
    }
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        if (snapshot.hasData) {
          String name = snapshot.data!.getString('name') ?? '';
          String sessionID = snapshot.data!.getString('sessionID') ?? '';
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
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
                              ),)
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
                                Container(
                                    child: Image.asset("assets/jpg/alumunium.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/Carton.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/paper and cardboard.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/plastic.jpeg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/styrofoam.jpeg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/textiles.jpeg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                ),
                                SizedBox(width: 10),
                                Container(
                                    child: Image.asset("assets/jpg/glass.jpg", fit:BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 150,
                                    height: 250
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Gunakan Fitur Utama",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50),
                  ElevatedButton.icon(
                    onPressed: () async {
                      await _detectTrash(await _takePicture() as File);
                    },
                    icon: Icon(Icons.camera_alt),
                    label: Text("Deteksi Sampah"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () async {
                      await _pickAndDetectTrash();
                    },
                    icon: Icon(Icons.camera_alt),
                    label: Text("Deteksi Sampah"),
                  ),
                ],
              ),
            )
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
