import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Screen_three extends StatefulWidget {
  const Screen_three({super.key});

  @override
  State<Screen_three> createState() => _Screen_threeState();
}

class _Screen_threeState extends State<Screen_three> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: Icon(Icons.traffic,size: 40),
          title: const Text('Third Route'),
        ),
        body: Container(alignment: Alignment.center,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi from screen #3"),
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
