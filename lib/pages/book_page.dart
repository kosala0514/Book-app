import 'package:flutter/material.dart';

class BooksCategory extends StatefulWidget {
  @override
  _BooksCategoryState createState() => _BooksCategoryState();
}

class _BooksCategoryState extends State<BooksCategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("GatherIt"),
              CircleAvatar(
                child: Icon(Icons.person),
              )
            ],
          )
        ],
      ),
    );
  }
}
