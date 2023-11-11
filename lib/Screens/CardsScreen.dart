import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Newslistviewbuilder.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Newslistviewbuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
