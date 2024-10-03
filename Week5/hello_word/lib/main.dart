// lib/main.dart

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'basic_widgets/loading_cupertino.dart';
import 'basic_widgets/fab_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/textfield_widget.dart';
import 'basic_widgets/date_time_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Widget root aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Daftar widget yang akan ditampilkan
  static final List<Widget> _widgetOptions = <Widget>[
    const LoadingCupertino(),
    const FabWidget(),
    const DialogWidget(),
    const TextFieldWidget(),
    const DateTimePicker(),
  ];

  // Fungsi untuk menangani perubahan tab
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget Demo'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Menampilkan semua item secara tetap
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_iphone), // Mengganti dengan ikon valid
            label: 'Cupertino',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fingerprint),
            label: 'FAB',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message), // Mengganti dengan ikon valid
            label: 'Dialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'TextField',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Date Picker',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
