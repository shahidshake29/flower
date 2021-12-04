import 'package:flutter/material.dart';

List<String> flowerList = [
  "করবী",
  "শেফালি",
  "পলাশ",
  "শালুক",
  "জবা",
  "কাঠগোলাপ",
  "শিমূল",
  "বকুল",
  "টগর",
  "মালতী",
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
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Flowers"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: flowerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          gradient: LinearGradient(colors: [
                            Colors.deepPurple,
                            Colors.pink,
                          ]),
                        ),
                        child: Center(
                          child: Text(flowerList[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
