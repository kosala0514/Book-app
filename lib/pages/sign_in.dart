import 'package:book_donation/pages/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'app_bar_page.dart';
import 'forget_password.dart';
import 'sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  // final AuthService _auth = AuthService();
  final Color primaryColor = Colors.amberAccent[400];

  final _auth = FirebaseAuth.instance;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String errorMessage;
  
  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    bool showSpinner = false;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Sign In'),
        //   // actions: [Icon(Icons.arrow_back)],
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  'Welcome to GatherIT',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  child: Image.asset(
                'assets/sign_in.png',
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Email Address'),
                          onChanged: (value){
                            email = value;
                          },
                        ),
                        SizedBox(height: 20,),
                        TextField(
                          decoration: InputDecoration(labelText: 'Password'),
                          onChanged: (value){
                            password = value;
                          },
                        ),
                        SizedBox(
                          height: 25,
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
                        onPressed: () async {
                          setState(() {
                            showSpinner = true;
                          });
                          try {
                            final user = await _auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            if (user != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            }
                          } catch (e) {
                            print(e);
                          }
                          setState(() {
                            showSpinner = false;
                          });
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Profile()));
                          // dynamic result = await _auth.signInAnon();
                          // if (result == null) {
                          //   print('error in sign in');
                          // } else {
                          //   print('sign in');
                          //   print(result);
                          // }
                        },
                        child: Text(
                          "Sign In",
                          style:
                              TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: SignInButton(
                        Buttons.Facebook,
                        mini: true,
                        onPressed: () {

                        }
                      ),
                    ),
                      ],
                    ),]),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      child: Text(
                        "Don't have account ?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    ),
                    TextButton(
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: primaryColor),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()),
                        );
                      },
                    )
                  ],
                ),
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

}
