import 'package:flutter/material.dart';
import 'package:tech_test/modules/home/presentation/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeTopBar(),
    );
  }
}
