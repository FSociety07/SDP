import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pickngo/model/main_screen.dart';
import 'package:pickngo/config/config.dart';

Future<void> main() async {
  configurations cfg = configurations();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
      apiKey: "AIzaSyAgkoELWMr5HLuMYIF1RmRzyWqKH3DATPU",
      appId: "1:576706625341:web:764174d12e735c3ef04f54",
      messagingSenderId: "576706625341",
      projectId: "pickngo-76ac4",
      authDomain:"pickngo-76ac4.firebaseapp.com",
      storageBucket: "pickngo-76ac4.appspot.com",
      measurementId: "G-T3MGY04HRR"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  void initState() {

    Firebase.initializeApp().whenComplete(() {
      print("completed");

    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

//diwanika
//karthee
