import 'package:flutter/material.dart';
import 'package:project_kegiatan1_modul1/radio.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Image.asset('assets/images/logo.png', height: 99.0, width: 100.0),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ), 
      body: Center(
          child: Column(
        children: <Widget>[
          Image.asset('assets/images/gluten.jpeg',
              width: MediaQuery.of(context).size.width),
          Image.asset('assets/images/banana.jpeg',
              width: MediaQuery.of(context).size.width),
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person), onPressed: () {}),
            IconButton(icon: const Icon(Icons.list), onPressed: () {}),
            IconButton(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return radio(); 
                          },
                        ),
                      );
                    },
                    child: const Icon(Icons.radio)),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
