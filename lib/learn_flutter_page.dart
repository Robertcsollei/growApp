import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isLearnt = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("images/landscape.jpg"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Szia Bence",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Tapped on Row");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.local_fire_department, color: Colors.red),
                  Text("Row widget"),
                  Icon(Icons.local_fire_department, color: Colors.blue),
                ],
              ),
            ),
            Switch(
              value: isLearnt,
              onChanged: (bool change) {
                setState(() {
                  isLearnt = change;
                });
                debugPrint('the change is ${change.toString()}');
              },
            )
          ],
        ),
      ),
    );
  }
}


          // Image.asset("images/landscape2.jpg"),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Divider(
          //   color: Colors.black,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Image.asset("images/legoCity.jpg"),

          // const SizedBox(
          //   height: 50,
          // ),
         
          // const Divider(
          //   color: Colors.black,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Image.asset("images/legoCity2.jpg"),
          // const SizedBox(
          //   height: 10,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Image.asset("images/legoCity3.jpg"),
          // const SizedBox(
          //   height: 10,
          // ),