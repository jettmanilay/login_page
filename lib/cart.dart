import 'package:flutter/material.dart';
import 'package:login_page/delivery.dart';
import 'package:login_page/widgets/List.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);
  @override
  _CartState createState() => new _CartState();
}

class _CartState extends State<Cart> {
  List<Quote> items = [
    Quote(
        name: 'CINNAMON ROLLS', price: '30', image: 'assets/images/image2.jpg'),
    Quote(name: 'TOTE BAGS', price: '50', image: 'assets/images/totebag.jpg'),
    Quote(name: 'ICE CREAM', price: '20', image: 'assets/images/icecream.jpg'),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  quote.image,
                  fit: BoxFit.fill,
                  width: 100.0,
                  height: 100.0,
                ),
                Text(
                  quote.name,
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ),
                Text(
                  ':           Php' + quote.price,
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Cart'),
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: BackButton(
          onPressed: () => {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Shop(),
                ))
          },
        ),
      ),
      body: new Column(
        children: items.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }

  void buttonPressed() {}
}
