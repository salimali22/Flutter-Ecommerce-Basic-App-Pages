import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({Key? key}) : super(key: key);

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
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, top: 10, bottom: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "History",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Column(
              children: [
                Products(image: "asset/Iphone 12.jpg", title: "Iphone 12"),
                Products(
                    image: "asset/Note 20 ultra.jpg", title: "Nova 20 Ultra"),
                Products(image: "asset/macbook air.jpg", title: "Macbook Air"),
                Products(image: "asset/macbook pro.jpg", title: "Macbook Pro"),
                Products(image: "asset/gaming pc.jpg", title: "Gaming PC"),
                Products(
                    image: "asset/back lit keyboard.jpg",
                    title: "Backlit Keyboard"),
                Products(image: "asset/merceds.jpg", title: "Mercedes"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Products extends StatefulWidget {
  dynamic image;
  dynamic title;
  Products({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.image),
        ),
        title: Text(widget.title),
        subtitle: Row(
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
        trailing: Text("\$10"),
      ),
    );
  }
}
