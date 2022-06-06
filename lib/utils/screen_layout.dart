import 'package:flutter/material.dart';
import 'package:spotlas_test/utils/stack_widget.dart';
import 'package:spotlas_test/utils/tags_widget.dart';
import 'package:spotlas_test/utils/toolbar_widget.dart';

import 'caption_widget.dart';

class ScreenLayoutWidget extends StatefulWidget {
  const ScreenLayoutWidget({Key? key}) : super(key: key);

  @override
  State<ScreenLayoutWidget> createState() => _ScreenLayoutWidgetState();
}

class _ScreenLayoutWidgetState extends State<ScreenLayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        children: const [
          Flexible(
            child: StackWidget(),
          ),
          ToolbarWidget(),
          CaptionWidget(
              text:
                  "I am making a basic shopping app .My idea is to make a list tile of my products so that I could edit or delete the products . So when i navigated to that page it showed a blank white page with the error as shown in the picture Blank Screen Error"),
          TagsWidget(),
        ],
      ),
    );
  }
}
