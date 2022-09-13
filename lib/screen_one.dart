import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Screen_one extends StatefulWidget {
  const Screen_one({super.key});

  @override
  State<Screen_one> createState() => _Screen_oneState();
}

class _Screen_oneState extends State<Screen_one> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Route'),
        ),
        body: Container(alignment: Alignment.center,
          color: Colors.red,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi from screen #1"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: Colors.red,
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    });
                  },
                  child: Text(
                    "HomePage",
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
