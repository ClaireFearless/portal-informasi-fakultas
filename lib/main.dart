import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const PortalFakultasApp());
}

class PortalFakultasApp extends StatelessWidget {
  const PortalFakultasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal Informasi Fakultas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
