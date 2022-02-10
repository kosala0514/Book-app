import 'about.dart';
import 'app_bar_page.dart';
import 'help.dart';
import 'privacy_policy.dart';

import 'cart.dart';
import 'profile_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    bool isCollapsed = false;
    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: Colors.yellow[100],
          child: Column(children: [
            Container(
              color: Colors.yellow[200],
              child: Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 20),
                child: Column(
                  children: <Widget>[
                    buildHeader(context),
                  ],
                ),
              ),
            ),
            settingItems(context),
          ]),
        ),
      ),
    );
  }

  Widget buildHeader(context) => Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 24,
              ), // Within the SecondRoute widget
              onPressed: () {
                Navigator.pop(context);
              }),
          const SizedBox(
            width: 26,
          ),
          Text(
            'GatherIT',
            style: TextStyle(fontSize: 30, color: Colors.black),
          )
        ],
      );

  Widget settingItems(context) => Column(
        children: [
          SizedBox(
            height: 50,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.person_outline_rounded),
                SizedBox(
                  width: 28,
                ),
                Text(
                  'My Profile',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.shopping_cart),
                SizedBox(
                  width: 28,
                ),
                Text(
                  'Cart',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Divider(color: Colors.black26),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Icon(Icons.color_lens),
          //     SizedBox(
          //       width: 28,
          //     ),
          //     Text(
          //       'Theme',
          //       style: TextStyle(fontSize: 16),
          //     )
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicy()),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.lock),
                SizedBox(
                  width: 28,
                ),
                Text(
                  'Privacy & Security',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help()),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.help),
                SizedBox(
                  width: 28,
                ),
                Text(
                  'Help',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.star),
                SizedBox(
                  width: 28,
                ),
                Text(
                  'About Us',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(color: Colors.black26),

          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppBarPage()),
              );
            },
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.logout),
              SizedBox(
                width: 28,
              ),
              Text(
                'Logout',
                style: TextStyle(fontSize: 16),
              ),
            ]),
          )
        ],
      );
}
