import 'package:flutter/material.dart';
import 'package:spotlas_test/utils/caption_widget.dart';
import 'package:spotlas_test/utils/stack_widget.dart';
import 'package:spotlas_test/utils/tags_widget.dart';
import 'package:spotlas_test/utils/toolbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Feed",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
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
        ));
  }
}
