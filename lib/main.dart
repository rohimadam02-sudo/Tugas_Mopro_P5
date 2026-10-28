import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:aplikasip4/pages/main_app.dart'; // Sesuaikan 'aplikasip4' dengan nama proyek Anda

void main() async {
  // Memastikan binding widget Flutter terinisialisasi sebelum operasi asynchronous
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Hive untuk platform Flutter
  await Hive.initFlutter();

  // Membuka Hive Box untuk menyimpan data kontak
  await Hive.openBox('contacts_box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(), // Memanggil halaman utama menu
    );
  }
}
