import 'app_bar_page.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        body: Container(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12, top: 90, bottom: 12),
              child: Column(
                children: [
                  Text(
                    "You may consult this list to find the Privacy Policy for each of the advertising partners of GatherIt.",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Beacons that are used in their respective advertisements and links that appear on GatherIt. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on this app or other apps or websites.',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Note that GatherIt has no access to or control over these cookies that are used by third-party advertisers.',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
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
                  Text("Privacy & Policy",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
