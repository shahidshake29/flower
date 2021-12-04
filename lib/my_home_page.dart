import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> flowerList = [
  "সর্যমুখীূ",
  "পদ্ম",
  "হেনা",
  "পলাশ",
  "শালুক",
  "জবা",
  "শিমূল",
  "করবী",
  "কেতকী",
  "টগর",
  "রজনীগন্ধা",
  "বকুল",
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
          Expanded(
            child: ListView.builder(
                itemCount: flowerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          gradient: LinearGradient(colors: [
                            Colors.amberAccent,
                            Colors.teal,
                          ]),
                        ),
                        child: Container(
                            child: Container(child: Container(
                            child: Center(
                              child: Text(
                                flowerList[index],
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 40,
                                    color: Colors.white70),
                              ),
                            ),
                          ),
                        ))),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
