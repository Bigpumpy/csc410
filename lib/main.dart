import 'package:csc410/constants.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                    child: Image.asset(
                      'assets/images/albert_head.JPG',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'I AM LEX LUTHER!!!!!',
                  style: TextStyle(
                    fontFamily: 'SourGummy',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Material(
                  elevation: 8.0,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: kTextFileDecoration.copyWith(hintText: "Firstname",labelText: "Enter First name", prefixIcon: Icon(Icons.person)),
                  ),
                ),
                SizedBox(height: 20.0),
                Material(
                  elevation: 8.0,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: kTextFileDecoration.copyWith(hintText: "Firstname",labelText: "Enter Email Address", prefixIcon: Icon(Icons.email)),
                  ),
                ),
                SizedBox(height: 20.0),
                Material(
                  elevation: 8.0,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: kTextFileDecoration.copyWith(hintText: "Password",labelText: "Enter Your Password", prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 3,
                        child: CheckboxListTile(
                          value: false,
                          title: Text('Remember Me'),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(width: 8.0),
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SourGummy',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  elevation: 8.0,
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 42.0,
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Login', 
                            style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        ClipOval(
                          child: Material(
                            elevation: 5.0,
                            child: InkWell(
                              splashColor: Colors.grey,
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Icon(
                                  Icons.arrow_forward
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
