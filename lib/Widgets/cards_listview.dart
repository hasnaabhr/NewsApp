import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Cards.dart';
import 'package:news_app/models/cardModel.dart';

class card_listview extends StatelessWidget {
  const card_listview({
    super.key,
  });
  final List<cardModel> cards_item = const [
    cardModel(
      imageAsset: 'assets/business.jpeg',
      name: 'Business',
    ),
    cardModel(imageAsset: 'assets/health.jpeg', name: 'Health'),
    cardModel(imageAsset: 'assets/science.jpeg', name: 'Science'),
    cardModel(imageAsset: 'assets/sports.jpeg', name: 'Sports'),
    cardModel(imageAsset: 'assets/technology.jpeg', name: 'Technology'),
    cardModel(imageAsset: 'assets/entertainment.jpeg', name: 'Entertainment'),
    cardModel(imageAsset: 'assets/general.jpeg', name: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards_item.length,
        itemBuilder: ((context, index) {
          return cards(
            category: cards_item[index],
          );
        }),
      ),
    );
  }
}
