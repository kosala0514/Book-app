import 'package:book_donation/pages/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'app_bar_page.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final Color primaryColor = Colors.amberAccent[400];

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;

    String email;
    String password;
    String user_name;
    String c_password;
    bool showSpinner = false;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Sign Up'),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Are You New Commer ?",
                    style: TextStyle(
                        fontSize: 26,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                  child: Image.asset(
                'assets/getStartedPage.png',
                height: 200,
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'User Name'),
                      onChanged: (value){
                        user_name = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Email Address'),
                      onChanged: (value){
                        email = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                      onChanged: (value){
                        password = value;
                      },
                    ),
                    TextField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password'),
                      onChanged: (value){
                        c_password = value;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: FlatButton(
                      onPressed: () async{
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          bool emailValid = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(email);
                          bool passValid = password == c_password ? true : false;
                          if(emailValid ){
                            Toast_Message("Valid Email");
                          }
                          else{
                            Toast_Message("Invalid Email");
                          }
                          // final newUser = await _auth.createUserWithEmailAndPassword(
                          //     email: email, password: password);
                          // if (newUser != null) {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Profile()));
                          // }
                        } catch (e) {
                          print(e);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text(
                  "Already have account ?",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: primaryColor,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AppBarPage()),
                          );
                        },
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Toast Toast_Message(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
