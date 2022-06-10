import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';
import 'package:spotlas_test/utils/post_widget/widgets/stack_widgets/stack_widget.dart';
import 'package:spotlas_test/utils/post_widget/widgets/tags_widget.dart';
import 'package:spotlas_test/utils/post_widget/widgets/toolbar_widgets/toolbar_widget.dart';

import 'widgets/caption_widget.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.90;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          Flexible(
            child: StackWidget(post: post),
          ),
          const ToolbarWidget(),
          CaptionWidget(
            caption: post.caption,
            author: post.author,
          ),
          TagsWidget(posttags: post.tags),
        ],
      ),
    );
  }
}
