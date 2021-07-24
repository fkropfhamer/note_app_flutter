import 'dart:convert';

import 'package:http/http.dart' as http;

class NoteApiClient {
  static final baseUrl = "http://10.0.2.2:5000/api/";

  static void authenticate(String username, String password) async {
    final response = await http.post(
      Uri.parse(baseUrl + "Authentication/Authenticate"),
      body: jsonEncode({ "username": username, "password": password }),
      headers: {
        'Content-type' : 'application/json', 
        'Accept': 'application/json',
      });

    if (response.statusCode != 200) {
      print("fail");
    }

    print(response);

    final json = jsonDecode(response.body);

    print(json);
  }
}

 