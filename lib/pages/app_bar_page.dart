import 'package:flutter/material.dart';

import '../main.dart';
import 'setting.dart';
import 'sign_in.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: SettingPage(),
          appBar: AppBar(
            title: Text(
              MyApp.title,
              style: TextStyle(fontSize: 30),
            ),
            //centerTitle: true,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {},
            // ),
            actions: [
              IconButton(
                icon: Icon(Icons.login_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
              ),
            ],
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: () {},
            //   )
            // ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow[800], Colors.yellow[400]],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.book), text: 'Read'),
                Tab(icon: Icon(Icons.shopping_basket), text: 'Buy'),
                Tab(icon: Icon(Icons.donut_small_rounded), text: 'donate'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    'Top 5 books!',
                    style: TextStyle(fontSize: 25, color: Colors.orange),
                  ),
                ),
                Container(
                  height: 300,
                  child: TabBarView(
                    children: [
                      TopBooks(),
                      TopBooks(),
                      TopBooks(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Comments of Book1',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Container(
                        height: 200,
                        child: Column(
                          children: [
                            CommentBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}

class TopBooks extends StatelessWidget {
  Container BookCard(String imgUrl, String bookName, String authorName) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: [
            Image.asset(imgUrl),
            ListTile(
              title: Text(bookName),
              subtitle: Text(authorName),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          BookCard('assets/getStartedPage.png', 'bookName1', 'authorName'),
          BookCard('assets/getStartedPage.png', 'bookName2', 'authorName'),
          BookCard('assets/getStartedPage.png', 'bookName3', 'authorName'),
          BookCard('assets/getStartedPage.png', 'bookName4', 'authorName'),
          BookCard('assets/getStartedPage.png', 'bookName5', 'authorName'),
        ],
      ),
    );
  }
}

class CommentBox extends StatelessWidget {
  Container EachComment(String text) {
    return Container(
      child: Card(
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(text),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          EachComment(
              'Comment 0kbtnb jb tgobtladnw kejhgrj rejgnkjrhg rekngkreg rkjgr rkhkr1, jnfjkvbjfnb k vkf brg kkb kfbrjbnkrjbn kg bkgr brib r bir br '),
          EachComment('Comment 02'),
          EachComment('Comment 03'),
          EachComment('Comment 04'),
          EachComment('Comment 05'),
          EachComment('Comment 06'),
        ],
      ),
    );
  }
}
