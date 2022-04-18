import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  const radio({Key? key}) : super(key: key);

  @override
  State<radio> createState() => _CreateState();
}

class _CreateState extends State<radio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Connect Kitchen'),
        backgroundColor: Color.fromARGB(255, 221, 197, 197),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 25.0, top: 0, right: 23.0, bottom: 0),
          padding:
              EdgeInsets.only(left: 25.0, top: 50.0, right: 23.0, bottom: 0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/kitchen.jpg'),
                height: 500,
                width: 500,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
                child: Text(
                  "You dont have any connected applience yet",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
