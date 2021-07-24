import 'package:flutter/material.dart';
import 'package:note_app_flutter/note_api_client.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username;
  var password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"),),
      body: ListView(children: [
        ListTile(title: TextField(
          onChanged: (value) => setState(() {
            username = value;
          }),
        ), subtitle: const Text("username"),),
        ListTile(title: TextField(
          onChanged: (value) => setState(() {
            password = value;
          }),
        ), subtitle: const Text("password"),),
        ElevatedButton(onPressed: () => {
          NoteApiClient.authenticate(username, password)
        }, child: const Text("Submit"))
      ],),
    );
  }
}