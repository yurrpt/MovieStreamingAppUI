import 'package:flutter/material.dart';

import 'feature/views/dashboard_view.dart';

Future main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
