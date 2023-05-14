import 'package:flutter/material.dart';
import 'package:grow_app/learn_flutter_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext builder) {
                return const LearnFlutterPage();
              }));
            },
            child: const Text("Learn Flutter")));
  }
}
