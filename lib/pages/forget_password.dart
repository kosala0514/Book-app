import 'package:flutter/material.dart';

import 'sign_in.dart';

class ForgetPassword extends StatelessWidget {
  final Color primaryColor = Colors.amberAccent[400];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Forget Password"),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Center(
                    child: Text(
                  "Didn't Remember Password?",
                  style: TextStyle(
                      fontSize: 25,
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                  child: Image.asset(
                'assets/forget_pswd.png',
                height: 250,
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'New Password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                child: Text(
                  "Go Back ?",
                  style: TextStyle(
                      fontSize: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}
