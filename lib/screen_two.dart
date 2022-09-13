import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Screen_Tow extends StatefulWidget {
  const Screen_Tow({super.key});

  @override
  State<Screen_Tow> createState() => _Screen_TowState();
}

class _Screen_TowState extends State<Screen_Tow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: Icon(Icons.traffic,size: 40),
          title: const Text('Seconed Route'),
        ),
        body: Container(alignment: Alignment.center,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi from screen #2"),
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
