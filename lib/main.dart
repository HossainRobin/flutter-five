import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.store)),
          title: Text("Home"),
          centerTitle: true,
          backgroundColor: Colors.green,
          toolbarHeight: 100,
          elevation: 70,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is mod 5 Assignment",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              RichText(
                  text: TextSpan(
                text: "My",
                style: TextStyle(color: Colors.red, fontSize: 20.0),
                children: [
                  TextSpan(
                      text: " phone",
                      style: TextStyle(color: Colors.blue, fontSize: 12.0)),
                  TextSpan(
                      text: " name",
                      style: TextStyle(color: Colors.purple, fontSize: 16.0)),
                  TextSpan(
                      text: " Your phone name",
                      style: TextStyle(color: Colors.amber, fontSize: 20.0)),
                ],
              ))
            ],
          ),
        ));
  }
}
