import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text('CSC 410 Class'),
          elevation: 1.0,
        ),
        body: Center(child: Text('Hello world')),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            print('i am clicked');
          },
          child: Icon(Icons.home),
        ),
        drawer: Drawer(
          backgroundColor: Colors.greenAccent,
          elevation: 2.0,
          child: ListView(
            padding: EdgeInsets.all(2.0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: Text(
                    'hi im lex luther',
                     style: TextStyle(color:  Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
