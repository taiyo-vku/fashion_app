import 'package:fashion_app/src/home/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(110), child: CustomAppBar()),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
