import 'package:flutter/material.dart';

Widget AppBarMain(BuildContext context){
  return AppBar(title: Text('Chatt',
  ),

  );
}

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.blueGrey),
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey))
  );
}

TextStyle simpleTextStyle(){
  return TextStyle(color: Colors.black,
  fontSize: 18
  );
}

TextStyle mediumTextStyle(){
  return TextStyle(color: Colors.black,
      fontSize: 16
  );
}