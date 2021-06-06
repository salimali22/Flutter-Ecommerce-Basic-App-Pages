import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 50),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 40,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          new Product(image: 'asset/iphone 12.jpg', name: 'Iphone 12'),
          new Product(image: 'asset/Note 20 ultra.jpg', name: 'Note 20 Ultra'),
          new Product(image: 'asset/macbook air.jpg', name: 'Macbook Air'),
          new Product(image: 'asset/macbook pro.jpg', name: 'Macbook Pro'),
          // Product(image: 'asset/gaming pc.jpg', name: 'Gaming PC'),
        ],
      ),
    );
  }
}

class Product extends StatefulWidget {
  String image;
  String name;

  Product({Key? key, required this.image, required this.name})
      : super(key: key);
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                    height: 80,
                    width: 125,
                  ),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: ),
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Text(
                          "5.0 (23 Review)",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2, bottom: 2),
                    child: Row(
                      children: [
                        Text(
                          "20 Pieces",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text("\$90",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2),
                    child: Row(
                      children: [
                        Text(
                          "Quantity: 1",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
