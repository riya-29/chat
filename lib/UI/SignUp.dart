import 'package:chat/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:chat/Widget/widget.dart';

class Sign_Up extends StatefulWidget{
  @override
  State<Sign_Up> createState() => _SignUp();

}

class _SignUp extends State<Sign_Up>{

  bool isLoading = false;

  final formKey =GlobalKey<FormState>();
  TextEditingController usernameTEC = new TextEditingController();
  TextEditingController emailTEC = new TextEditingController();
  TextEditingController passwordTEC = new TextEditingController();

  AuthMethod authMethod = new AuthMethod();
  signMeUp(){
    if(formKey.currentState.validate()){
      setState(() {
        isLoading = true;
      });
       authMethod.signUpWithEmailAndPassword(emailTEC.text, passwordTEC.text).then((value) => print("$value"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(context),
      backgroundColor: Colors.white,
      body: isLoading?Center(child: CircularProgressIndicator(),):SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(key: formKey,
                  child: Column(children: [
                    TextFormField(
                      validator: (val){
                        return val.isEmpty||val.length<2?"Invalid Username":null;
                      },
                      controller: usernameTEC,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration('Username')),
                    TextFormField(
                      validator: (val){
                        return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ?
                        null : "Invalid Email";
                      },
                      controller: emailTEC,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration('Email')),
                    TextFormField(
                      validator: (val){
                        return val.length < 6?"Password must have at least 6 characters":null;
                      },
                        obscureText: true,
                      controller: passwordTEC,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration('Password')
                  ),],),
                ),
                SizedBox(height: 8,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children:[ Text('Forget Password?',style: simpleTextStyle(),)],),
                SizedBox(height:  16,),
                GestureDetector(
                  onTap: (){
                    signMeUp();
                  },
                  child: Container(
                    alignment:  Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        gradient: LinearGradient(colors: [Colors.blue.shade400,Colors.blueAccent])
                    ),
                    child: Text('Sign Up',style: TextStyle(color: Colors.white,
                        fontSize: 19),),),
                ),
                SizedBox(height:  8,),
                Container(
                  alignment:  Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      gradient: LinearGradient(colors: [Colors.grey.shade400,Colors.grey])
                  ),
                  child: Text('Sign Up with Google',style: TextStyle(color: Colors.white,
                      fontSize: 19),),),
                SizedBox(height: 16,),
                Row(mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                      Text("Already have an account? ", style: mediumTextStyle(),),
                      Text("Sign In", style: TextStyle(color: Colors.black,
                          fontSize: 14,
                          decoration: TextDecoration.underline))]),
                SizedBox(height: 50,)],
            ),
          ),
        ),
      ),
    );
  }
}