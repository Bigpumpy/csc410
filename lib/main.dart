import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    void showAlert(BuildContext) {
      showDialog(
        context: context,
        builder:
            (_) => AlertDialog(
              title: Text('Alert'),
              content: Text('Welcome to CSC 410 class'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Thank you'),
                ),
              ],
            ),
      );
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('CSC 410 Class'),
          elevation: 1.0,
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => showAlert(context),
                    child: Text('Press Me'),
                  ),
                  GestureDetector(
                    onTap: () => {print('Albert tapped me')},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Tap ME',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/IMG_1760.JPG', width: 150),
                ),
              ),
              SizedBox(height: 10,),
              Text('I AM BATMAN!!!',
                style: TextStyle(
                  fontFamily: 'SourGummy',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            print('i am clicked');
          },
          child: Icon(Icons.home),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 2.0,
          child: ListView(
            padding: EdgeInsets.all(2.0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                child: Text(
                  'hi im lex luther',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(title: Text('Home'), onTap: () {}),
              ListTile(title: Text('Settings'), onTap: () {}),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
