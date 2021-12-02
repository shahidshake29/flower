import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<String> flowerList=[
  "সর্যমুখীূ",
  "পদ্ম",
  "হেনা",
  "পলাশ",
  "শালুক",
  "জবা",
  "শিমূল",
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text("Flowers"),
      ),
      body: Column(
        children: [

          ]
      ),
    );
  }
}
