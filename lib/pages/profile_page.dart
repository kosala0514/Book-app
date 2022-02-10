import 'dart:ui';

import '../pages/app_bar_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isSelectBook = true;
  bool _isSelectShopping = false;
  bool _isSelectDonation = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double width = fullwidth - 25;
    double fullheight = MediaQuery.of(context).size.height;
    double height = fullheight - 25;
    return SafeArea(
      child: Container(
        child: Scaffold(
          // backgroundColor: Colors.amber[200],
          body: SizedBox(
            width: double.infinity,
            child: Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: height * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/profile.jpeg'),
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    )),
                  ),
                  Container(
                    height: height * 0.6,
                    decoration: BoxDecoration(color: Colors.orange[200]),
                  )
                  // Image.asset('assets/profile.jpeg')
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.30,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/profile.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(60)),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.36,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.34,
                          ),
                          Text(
                            "Sherin Kenni",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '-',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Kenee",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Text(
                        'Designer',
                        style: TextStyle(color: Colors.blue[500], fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _isSelectBook
                              ? Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      icon: Icon(Icons.book_online,
                                          color: Colors.orange),
                                      onPressed: () {
                                        setState(() {
                                          _isSelectBook = true;
                                          _isSelectShopping = false;
                                          _isSelectDonation = false;
                                        });
                                      }),
                                )
                              : IconButton(
                                  icon: Icon(Icons.book_online),
                                  onPressed: () {
                                    setState(() {
                                      _isSelectBook = true;
                                      _isSelectShopping = false;
                                      _isSelectDonation = false;
                                    });
                                  }),
                          _isSelectShopping
                              ? Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.shopping_bag,
                                        color: Colors.orange,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isSelectBook = false;
                                          _isSelectShopping = true;
                                          _isSelectDonation = false;
                                        });
                                      }),
                                )
                              : IconButton(
                                  icon: Icon(Icons.shopping_bag),
                                  onPressed: () {
                                    setState(() {
                                      _isSelectBook = false;
                                      _isSelectShopping = true;
                                      _isSelectDonation = false;
                                    });
                                  }),
                          _isSelectDonation
                              ? Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.donut_large,
                                        color: Colors.orange,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isSelectBook = false;
                                          _isSelectShopping = false;
                                          _isSelectDonation = true;
                                        });
                                      }),
                                )
                              : IconButton(
                                  icon: Icon(Icons.donut_large),
                                  onPressed: () {
                                    setState(() {
                                      _isSelectBook = false;
                                      _isSelectShopping = false;
                                      _isSelectDonation = true;
                                    });
                                  }),
                        ],
                      ),

                      // #006#
                      SizedBox(
                        height: 8,
                      ),
                      _isSelectBook
                          ? Column(
                              children: [
                                Text(
                                  'My Reading',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.orange),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: height * 0.17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange[50]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset('assets/cover.jpg'),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Java for Beginners",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("Dr. JK",
                                                  style:
                                                      TextStyle(fontSize: 15))
                                            ],
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.close,
                                                color: Colors.red,
                                              ),
                                              onPressed: () {}),
                                          IconButton(
                                              icon: Icon(
                                                Icons.edit,
                                                color: Colors.green,
                                              ),
                                              onPressed: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      _isSelectShopping
                          ? Column(
                              children: [
                                Text(
                                  'My Shoping',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.orange),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: height * 0.17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange[50]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset('assets/cover.jpg'),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Algorithms in Java",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("JK Dev",
                                                  style:
                                                      TextStyle(fontSize: 15))
                                            ],
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.close,
                                                color: Colors.red,
                                              ),
                                              onPressed: () {}),
                                          IconButton(
                                              icon: Icon(
                                                Icons.edit,
                                                color: Colors.green,
                                              ),
                                              onPressed: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      _isSelectDonation
                          ? Column(
                              children: [
                                Text(
                                  'My Donations',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.orange),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: height * 0.17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange[50]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset('assets/cover.jpg'),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Java",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("Naveen Prasanna",
                                                  style:
                                                      TextStyle(fontSize: 15))
                                            ],
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.close,
                                                color: Colors.red,
                                              ),
                                              onPressed: () {}),
                                          IconButton(
                                              icon: Icon(
                                                Icons.edit,
                                                color: Colors.green,
                                              ),
                                              onPressed: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Container(),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
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
                            MaterialPageRoute(
                                builder: (context) => AppBarPage()),
                          );
                        },
                      ),
                    ),
                    Text(
                      "My Account",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
