import 'package:flutter/material.dart';
import 'package:news_app/Screens/CardsScreen.dart';
import 'package:news_app/models/cardModel.dart';

class cards extends StatelessWidget {
  const cards({super.key, required this.category});

  final cardModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CardsScreen(
                category: category.name,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.imageAsset),
            ),
          ),
          child: Center(
            child: Text(
              category.name,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
