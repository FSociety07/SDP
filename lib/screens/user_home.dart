import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pickngo/model/main_screen.dart';
import 'package:pickngo/model/user_data.dart';
import 'package:provider/provider.dart';

import '../model/firebase_services.dart';
import '../model/user_model.dart';

class userHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List userList = Provider.of<List<UserModel>>(context);
    FirebaseServices firebaseServices = FirebaseServices();
    var a = userList[1].name;

    return Scaffold(
      appBar: AppBar(
        title: Text('User Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("User Home page"),
            ElevatedButton(
              child: Text("Log out"),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer header"),
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
