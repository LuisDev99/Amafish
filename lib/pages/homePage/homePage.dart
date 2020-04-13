import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String shoppingIconUrl =
      'https://image.flaticon.com/icons/svg/1979/1979705.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
            width: double.infinity,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.menu,
                size: 40,
              ),
              SizedBox(
                width: 40,
              ),
              RichText(
                text: TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Ama',
                    ),
                    TextSpan(
                      text: 'Fish',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Icon(
                Icons.shopping_cart,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Text('Hola'),
          Container(
            height: 70.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
