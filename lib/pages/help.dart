import 'package:flutter/material.dart';

import 'app_bar_page.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool q1 = false;
  bool q2 = false;
  bool q3 = false;
  bool q4 = false;
  bool q5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.amberAccent[400],
                        borderRadius: BorderRadius.circular(50)),
                    child: FlatButton(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppBarPage()),
                        );
                      },
                    ),
                  ),
                  Text("Help",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Frequently Asked Questions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'How I find book?',
                    style: TextStyle(fontSize: 18),
                  ),
                  q1
                      ? FlatButton(
                          onPressed: () {
                            setState(() {
                              q1 = !q1;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 30,
                          ),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              q1 = !q1;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                        )
                ],
              ),
              q1
                  ? Container(
                      child: Text(
                          "You can see latest and best five books in home screen. if you want to more books click more or if you want to get it just click on book image",
                          style: TextStyle(fontSize: 16, color: Colors.orange)),
                    )
                  : Container(
                      height: 0,
                    ),
              Row(
                children: [
                  Text(
                    'How I add book for donation?',
                    style: TextStyle(fontSize: 18),
                  ),
                  q2
                      ? FlatButton(
                          onPressed: () {
                            setState(() {
                              q2 = !q2;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 30,
                          ),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              q2 = !q2;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                        )
                ],
              ),
              q2
                  ? Container(
                      child: Text(
                          'Fist you must Log in( if you dont have account sign uo first), then go to profile and add your books for donation',
                          style: TextStyle(fontSize: 16, color: Colors.orange)),
                    )
                  : Container(),
              Row(
                children: [
                  Text(
                    'How I buy book?',
                    style: TextStyle(fontSize: 18),
                  ),
                  q3
                      ? FlatButton(
                          onPressed: () {
                            setState(() {
                              q3 = !q3;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 30,
                          ),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              q3 = !q3;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                        )
                ],
              ),
              q3
                  ? Container(
                      child: Text(
                          'Go to home page and find your book according to your favor and add to cart. then check out',
                          style: TextStyle(fontSize: 16, color: Colors.orange)),
                    )
                  : Container(),
              Row(
                children: [
                  Text(
                    'How I change pasword?',
                    style: TextStyle(fontSize: 18),
                  ),
                  q4
                      ? FlatButton(
                          onPressed: () {
                            setState(() {
                              q4 = !q4;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 30,
                          ),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              q4 = !q4;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                        )
                ],
              ),
              q4
                  ? Container(
                      child: Text(
                          'so to log in page and then go to forgot password and change it. ',
                          style: TextStyle(fontSize: 16, color: Colors.orange)))
                  : Container(),
              Row(
                children: [
                  Text(
                    'How I read book?',
                    style: TextStyle(fontSize: 18),
                  ),
                  q5
                      ? FlatButton(
                          onPressed: () {
                            setState(() {
                              q5 = !q5;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 30,
                          ),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              q5 = !q5;
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                        )
                ],
              ),
              q5
                  ? Container(
                      child: Text(
                        'It\'s easy. go to read section in home. if there are your favor book just click on it, if it is not there go to more and select your book.',
                        style: TextStyle(fontSize: 16, color: Colors.orange),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
