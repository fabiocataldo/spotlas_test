import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';
import 'package:spotlas_test/utils/post_widget/widgets/stack_widgets/widgets/carousel.dart';
import 'package:spotlas_test/utils/post_widget/widgets/stack_widgets/widgets/spot_card_widget.dart';
import 'package:spotlas_test/utils/post_widget/widgets/stack_widgets/widgets/author_widget.dart';

class StackWidget extends StatelessWidget {
  final Post post;
  const StackWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(children: [
        CarouselWidget(imgList: post.media.map((midia) => midia.url).toList()),
        Align(
          alignment: AlignmentDirectional.topCenter,
          child: UserCardWidget(author: post.author),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: SpotCardWidget(spot: post.spot),
        ),
      ]),
    );
  }
}
