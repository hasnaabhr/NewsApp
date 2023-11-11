import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel.dart';

class News extends StatelessWidget {
  const News({Key? key, required this.articalModel}) : super(key: key);
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (articalModel.image != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articalModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        const SizedBox(
          height: 16,
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8.0),
        if (articalModel.subtitle != null)
          Text(
            articalModel.subtitle!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w100,
            ),
          ),
      ],
    );
  }
}
