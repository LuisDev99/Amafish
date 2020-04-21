import 'package:amafish/pages/homePage/productCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String shoppingIconUrl =
      'https://image.flaticon.com/icons/svg/1979/1979705.svg';

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'YES'),
  ];

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _drawerKey,
        drawer: Drawer(),
        drawerEdgeDragWidth: 0,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.message),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 30, width: double.infinity),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  onPressed: () {
                    _drawerKey.currentState.openDrawer();
                  },
                ),
                SizedBox(width: 30),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Ama'),
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
                SizedBox(width: 120),
                Icon(Icons.shopping_cart),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.keyboard_voice),
                ),
              ),
            ),
            SizedBox(height: 30),
            TabBar(
              indicatorWeight: 5.0,
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.fromLTRB(0, 2.5, 0, 10),
              tabs: <Widget>[
                Text("Recientes"),
                Text("Para ti"),
                Text("Vistos"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ProductCardList(Colors.blue),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ProductCardList(Colors.red),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ProductCardList(Colors.yellow),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
