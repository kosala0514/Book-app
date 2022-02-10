import 'package:flutter/material.dart';

class BuyBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow),
                  child: Icon(Icons.search)),
              onPressed: () {},
            ),
            FlatButton(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.add)),
              onPressed: () {},
            )
          ],
        ),
        Align(child: Text("Children")),
        Books(),
        Text("Novels"),
        Books(),
        Text("Science Fiction"),
        Books()
      ]),
    );
  }
}

class Books extends StatelessWidget {
  Container BookCard(String imgUrl, String bookName, String authorName) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: [
            Image.asset(
              imgUrl,
              height: 100,
            ),
            Text(bookName),
            Text(authorName),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150,
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
