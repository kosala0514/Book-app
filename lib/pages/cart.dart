import '../pages/app_bar_page.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _isHasData = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fullheight = MediaQuery.of(context).size.height;
    double height = fullheight - 25;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          _isHasData
              ? ListView(children: [
                  SizedBox(
                    height: height * 0.15,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/cover.jpg'),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Java for Beginners",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Dr. JK", style: TextStyle(fontSize: 15))
                              ],
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: FlatButton(
                        color: Colors.orange,
                        child: Text(
                          'Check Out',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ])
              : Center(child: Text("There is no item to purches")),
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
                        MaterialPageRoute(builder: (context) => AppBarPage()),
                      );
                    },
                  ),
                ),
                Text("My Cart",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
