import 'package:flutter/material.dart';
import 'package:login_page/cart.dart';
import 'package:login_page/widgets/Carousel.dart';
import 'package:login_page/widgets/List.dart';

class Shop extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

final featured = Padding(
  padding: EdgeInsets.only(bottom: 5),
  child: ButtonTheme(
    height: 50,
    child: RaisedButton(
        child: Text('Add to Cart',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        color: Colors.lightGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () => {}),
  ),
);

class _ShopPageState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('C.L.A.P. Market'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                " Featured",
                style: TextStyle(
                    fontSize: 34.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
              SizedBox(
                height: 1,
              ),
              FoodSlideWidget(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                      text: 'Cinnamon Rolls by ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'BAKER',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  featured,
                ],
              ),
              SizedBox(height: 10),
              Text(
                " All",
                style: new TextStyle(
                    fontSize: 26.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/totebag.jpg'),
                  Positioned(
                    bottom: 0.0,
                    right: 160.0,
                    child: new RaisedButton(
                      key: null,
                      onPressed: () => {},
                      color: Colors.green,
                      child: new Text(
                        "Add to Cart",
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                      text: 'Tote Bags by ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'CRAFTSMAN',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/icecream.jpg'),
                  Positioned(
                    bottom: -6.0,
                    right: 160.0,
                    child: new RaisedButton(
                      key: null,
                      onPressed: () => {},
                      color: Colors.green,
                      child: new Text(
                        "Add to Cart",
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                      text: 'Ice Cream by ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ICE CREAM MAKER',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ));
          },
          child: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
