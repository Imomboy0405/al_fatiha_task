import 'package:al_fatiha_task/data/services/init_service.dart';
import 'package:al_fatiha_task/presentation/ui/screens/chat_page.dart';
import 'package:flutter/material.dart';

class AlFatiha extends StatelessWidget {
  final Future _initFuture = Init.initialize();

  AlFatiha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Fatiha',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initFuture,
        builder: (context, snapshot) => ChatPage(),
      ),
      routes: {},
    );
  }
}
