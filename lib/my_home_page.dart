import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> flowerList = [
  "গোলাপ",
  "রজনীগন্ধা",
  "শালুক",
  "জবা",
  "গন্ধরাজ",
  "পদ্ম",
  "শিমূল",
  "বকুল",
  "মালতী",
  "টগর",
  "মল্লিকা",
  "কেতকী",
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
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Flowers"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: flowerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 20, right: 20),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Colors.lightBlue,
                      ),
                      child: Center(
                        child: Text(
                          flowerList[index],
                          style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
