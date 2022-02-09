import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pickngo/model/main_screen.dart';
import 'package:pickngo/screens/admin_createAcc.dart';
import 'package:pickngo/screens/login.dart';

class adminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Admin Home Page"),
            ElevatedButton(
              child: Text("Create Rider Account"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const riderRegistration()));
              },
            ),
            ElevatedButton(
              child: Text("Log out"),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
