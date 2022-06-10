import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class SaveRecommendationWidget extends StatelessWidget {
  const SaveRecommendationWidget({Key? key}) : super(key: key);

  final isLiked = false;

  onSaveRecommendationTap() {
    //do something
  }

  @override
  Widget build(BuildContext context) {
    return LikeButton(
        onTap: onSaveRecommendationTap(),
        likeBuilder: (
          bool isLiked,
        ) {
          return ImageIcon(
            const AssetImage("assets/images/star_icon.png"),
            color: isLiked ? Colors.pink : Colors.black,
          );
        });
  }
}
