import 'package:http/http.dart' as http;
import 'dart:convert';



class AuthService {
  Future<bool> register(String name, String email, String password,
      String confPassword) async {
    final Map<String, dynamic> data = {
      "name": name,
      "email": email,
      "password": password,
      "confPassword": confPassword
    };

    final String apiUrl = 'https://backend-dot-cycleme-2023.et.r.appspot.com/users/register';

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      // Registration was successful
      return true;
    } else {
      // Registration failed
      return false;
    }
  }


  Future<bool> login(String email, String password) async {
    final Map<String, dynamic> data = {
      "email": email,
      "password": password
    };

    final String apiUrl = "https://backend-dot-cycleme-2023.et.r.appspot.com/login";

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Registration was successful
      return true;
    } else {
      // Registration failed
      return false;
    }
  }
}