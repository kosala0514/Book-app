import 'package:flutter/material.dart';

import 'app_bar_page.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                  Text("About",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/about.png'),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "What is the purpose ?",
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "In the world as well as our contry also there are many peoples want to read but they have not time to go book shop and buy it. some peoples dont have enough money for it. I think this two problems solve with this app solution. Nowadays Most peoples use smart phones and they are friendly with it because of this this willl be best solution for who love to read book.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Why want book donation",
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "There are many peoples dont have enough money to buy book. In here we are observe a platform to you to gather books and give who it most want",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
