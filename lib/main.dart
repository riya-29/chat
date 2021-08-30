import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat/UI/SignUp.dart';
bool USE_FIRESTORE_EMULATOR = false;

void main(){
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue),
      home:Sign_Up()));
}

/*runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.blue),
      home:Sign_Up()));
}*/
