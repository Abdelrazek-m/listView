import 'package:flutter/material.dart';

class listView1 extends StatefulWidget {
  @override
  State<listView1> createState() => _listView1State();
}

class _listView1State extends State<listView1> {
  List co = [
    Colors.blueAccent,
    Colors.indigoAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.limeAccent,
    Colors.orangeAccent,
    Colors.deepPurple,
    Colors.amberAccent,
    Colors.blueGrey,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("kandcode.com"),
        centerTitle: true,
      ),
      body: Scrollbar(
        trackVisibility: true,
        interactive: true,
        thickness: 10, //width of scrollbar
        radius: Radius.circular(20),
        //corner radius of scrollbar

        scrollbarOrientation:
            ScrollbarOrientation.left, //which side to show scrollbar
        child: ListView.separated(
            padding: const EdgeInsets.only(top: 15),
            itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: co[index % 10],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset.fromDirection(5, -5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  child: Text(
                    "item $index",
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: 50),
      ),
    );
  }
}
