import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({Key? key}) : super(key: key);

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
        children: [User()],
      ),
    );
  }
}

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          child: Row(mainAxisSize: MainAxisSize.max, children: [
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(4),
          child: Column(
            children: [
              Image(
                image: AssetImage('asset/User.png'),
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ],
          ),
        ),
        Container(
          // margin: EdgeInsets.only(left: ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "USER",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 2, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "abc@gmail.com",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text("logout",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.purple,
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
      ])),
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.all(20),
        child: Text(
          "ACCOUNT INFORMATION",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              child: ListTile(
                title: Text(
                  "Full Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text("User"),
                trailing: Icon(Icons.edit),
              ),
            ),
            Task2a(title: "Email", subtitle: "user@gmail.com"),
            Task2a(title: "Phone", subtitle: "+0900-786 01"),
            Task2a(
                title: "Address",
                subtitle: "New York, Random Street House No 72"),
            Task2a(title: "Gender", subtitle: "Male"),
          ],
        ),
      )
    ]));
  }
}

class Task2a extends StatefulWidget {
  dynamic title;
  dynamic subtitle;
  Task2a({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  _Task2aState createState() => _Task2aState();
}

class _Task2aState extends State<Task2a> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      subtitle: Text(widget.subtitle),
    ));
  }
}
