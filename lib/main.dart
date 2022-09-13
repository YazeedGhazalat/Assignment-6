import 'package:flutter/material.dart';
import 'package:myapp/screen_one.dart';
import 'package:myapp/screen_three.dart';
import 'package:myapp/screen_two.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.traffic,size: 40),
        title: const Text('Home Page'),
      ),
      body: Container(alignment: Alignment.center,
          color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi from HomePage"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.red,
                  backgroundColor: Colors.red,
                  minimumSize: Size(1, 1),
                  maximumSize: Size(250, 100),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Screen_one();
                    }),
                  );
                });
              },
              child: Text(
                "screen1.dart",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.red,
                  backgroundColor: Colors.amber,
                  minimumSize: Size(1, 1),
                  maximumSize: Size(250, 100),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Screen_Tow();
                    }),
                  );
                });
              },
              child: Text(
                "screen2.dart",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Divider(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.red,
                  backgroundColor: Colors.green,
                  minimumSize: Size(1, 1),
                  maximumSize: Size(250, 100),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Screen_three();
                    }),
                  );
                });
              },
              child: Text(
                "screen3.dart",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
