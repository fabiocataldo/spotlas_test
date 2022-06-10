import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonWidget extends StatelessWidget {
  const LikeButtonWidget({Key? key}) : super(key: key);

  final isLiked = false;

  onLikeButtonTapped() {
    //do something
  }

  @override
  Widget build(BuildContext context) {
    return LikeButton(
        onTap: onLikeButtonTapped(),
        likeBuilder: (
          bool isLiked,
        ) {
          return ImageIcon(
            const AssetImage("assets/images/heart_icon.png"),
            color: isLiked ? Colors.pink : Colors.black,
          );
        });
  }
}
