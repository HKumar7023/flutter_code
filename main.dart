import 'package:flutter/material.dart';
import 'package:flutter_color/sign_up.dart';  

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoAppState();
  }
}

class DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoHomePage(), // Setting the initial home page
    );
  }
}

class DemoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Say hello to your new app',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
                onPressed: () {
                  print('Log in');
                 
                },
                child: Text('Log in'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
