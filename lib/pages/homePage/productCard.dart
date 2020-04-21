import 'package:flutter/material.dart';

class ProductCardList extends StatelessWidget {
  final Color _cardColor;

  ProductCardList(this._cardColor);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (_, __) {
        return ProductCard(_cardColor);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class ProductCard extends StatelessWidget {
  final _width = 180.0;
  final _height = 300.0;
  final _spaceBetweenCards = 10.0;
  final _spaceBelowImage = 20.0;
  final _paddToCenter = 25.0;
  final _imgUrl =
      'https://cdn-learn.adafruit.com/assets/assets/000/012/878/original/led_strips_doge.bmp?1386611464';
  final Color _color;

  ProductCard(this._color);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: _width,
        height: _height,
        margin: EdgeInsets.symmetric(
          horizontal: _spaceBetweenCards,
          vertical: _spaceBelowImage,
        ),
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Text("350 LPS"),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _paddToCenter,
        ),
        child: Image.network(
          _imgUrl,
        ),
      ),
    ]);
  }
}
