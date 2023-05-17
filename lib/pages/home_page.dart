import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Consumer is a widget that allows you reading providers.
      child: Consumer(
        builder: (context, ref, _) {
          final count = ref.watch(counterProvider);
          return Text('$count');
        },
      ),
    );
  }
}
