import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/counter_model.dart';
import 'package:workspace/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => CounterModel(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
