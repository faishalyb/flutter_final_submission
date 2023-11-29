import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:final_submission/rest/ml.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../account/login_screen.dart';
import '../global/toast.dart';

class Recycle_Screen extends StatelessWidget {
  final MLService mlService = MLService(); // Buat instance dari MLService

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
        // Gunakan MLService untuk deteksi sampah
        Map<String, dynamic> data = await mlService.detectTrash(inputImageFile);
        print('Response from API: $data');
        // Tampilkan respons ke pengguna sesuai kebutuhan
      } catch (e) {
        // Tangani kesalahan dari MLService
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