import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';




class AuthService with ChangeNotifier {
  late SharedPreferences _prefs;
  String? _sessionID;
  String? _uuid;
  String? _name;
  String? _role;
  String? get uuid => _uuid;
  String? get sessionID => _sessionID;
  String? get name => _name;
  String? get role => _role;


  AuthService(){
    _initPreferences();
  }

  Future<void> _initPreferences() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      _sessionID = _prefs.getString('sessionID');
      _uuid = _prefs.getString('uuid');
      _name = _prefs.getString('name');
      _role = _prefs.getString('role');
    } catch (e) {
      print('Error initializing SharedPreferences: $e');
    }
  }

  Future<bool> register(String name, String email, String password,
      String confPassword) async {
    final Map<String, dynamic> data = {
      "name": name,
      "email": email,
      "password": password,
      "confPassword": confPassword
    };

    final String apiUrl = dotenv.env["API_URL"]! + '/users/register';

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


  Future<void> login(String email, String password) async {

    final String apiUrl = dotenv.env["API_URL"]! + '/login';

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);

      String sessionID = responseBody['loginResult']['sessionID'];
      String name = responseBody['loginResult']['name'];
      String role = responseBody['loginResult']['role'];


      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('sessionID', sessionID);
      await prefs.setString('name', name);
      await prefs.setString('role', role);


      print('Login response status code: ${response.statusCode}');
      print('Login response body: ${response.body}');
      print('Request URL: ${Uri.parse('https://backend-dot-cycleme-2023.et.r.appspot.com/login')}');
      print('Request Headers: ${{'Authorization': 'Bearer ${_sessionID ?? ''}'}}');

    } else {
      throw Exception('Failed to login.');
    }
  }



  Future<void> logout() async {
      final String apiUrl = dotenv.env["API_URL"]! + '/logout';

      final response = await http.delete(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
      );
      print('Session ID before logout: $_sessionID');
      if (response.statusCode == 200) {
        _sessionID = null;
        await _prefs?.remove('sessionID');
        notifyListeners(); // Notify listeners that the authentication state has changed
        print('Session ID after logout: $_sessionID');

      } else {
        print("failed to logout");
      }
  }



  Future<void> check() async {
    if (_sessionID == null) {
      throw Exception('User is not authenticated');
    }
    try {
      print('Session ID before getUserInfo: $_sessionID'); // Add this line
      print('UUID before getUserInfo: $_uuid'); // Add this line
      print('Request URL: ${Uri.parse('https://backend-dot-cycleme-2023.et.r.appspot.com/me')}');
      print('Request Headers: ${{'Authorization': 'Bearer ${_sessionID ?? ''}'}}');
    } catch (e) {
      print('Error in getUserInfo: $e'); // Add this line
      throw Exception('Failed to get user info - $e');
    }
  }

}