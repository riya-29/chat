import 'package:chat/Widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_In extends StatefulWidget{
  @override
  State<Sign_In> createState() =>_SignIn();

}

class _SignIn extends State<Sign_In>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarMain(context),
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - 50,
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [TextField(
              style: simpleTextStyle(),
              decoration: textFieldInputDecoration('Email')
            ),TextField(
                style: simpleTextStyle(),
              decoration: textFieldInputDecoration('Password')
            ),
            SizedBox(height: 8,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children:[ Text('Forget Password?',style: simpleTextStyle(),)],),
            SizedBox(height:  16,),
            Container(
              alignment:  Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                gradient: LinearGradient(colors: [Colors.blue.shade400,Colors.blueAccent])
              ),
              child: Text('Sign In',style: TextStyle(color: Colors.white,
                fontSize: 19),),),
              SizedBox(height:  8,),
              Container(
                alignment:  Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    gradient: LinearGradient(colors: [Colors.grey.shade400,Colors.grey])
                ),
                child: Text('Sign In with Google',style: TextStyle(color: Colors.white,
                    fontSize: 19),),),
              SizedBox(height: 16,),
              Row(mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                Text("Don't have an account? ", style: mediumTextStyle(),),
                Text("Register Now", style: TextStyle(color: Colors.black,
                  fontSize: 14,
                  decoration: TextDecoration.underline))]),
            SizedBox(height: 50,)],
          ),
        ),
      ),
    ),);
  }
}