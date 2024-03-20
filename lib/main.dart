import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Dashboard/Dashboard_Screen.dart';

Future<void> main() async {
  Platform.isAndroid
  ? await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB6UFC8SUOXYPn0otbbZto4oIJSMMw1pao",
        appId: "1:674246600688:android:293161a8c4182f30a09f35",
        messagingSenderId: "674246600688",
        projectId: "softgrid-c481c",
        storageBucket: 'softgrid-c481c.appspot.com'),
  )
  : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: DashboardScreen(),
    );
  }
}


