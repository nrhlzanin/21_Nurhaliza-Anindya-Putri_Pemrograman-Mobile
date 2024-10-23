// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'red_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

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
        title: const Text('Plugin Demo'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellowAccent,
            width: 50,
            child: const RedTextWidget(
              text: 'You have pushed the button this many times:',
            ),
          ),
          Container(
            color: Colors.greenAccent,
            width: 100,
            child: const Text(
              'You have pushed the button this many times:',
            ),
          ),
        ],
      ),
    );
  }
}
