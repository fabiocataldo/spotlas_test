import 'package:flutter/material.dart';

class ToolbarWidget extends StatelessWidget {
  const ToolbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ImageIcon(
            AssetImage("assets/images/map_icon.png"),
            color: Colors.black,
          ),
          ImageIcon(
            AssetImage("assets/images/comment_icon.png"),
            color: Colors.black,
          ),
          ImageIcon(
            AssetImage("assets/images/heart_icon.png"),
            color: Colors.black,
          ),
          ImageIcon(
            AssetImage("assets/images/send_icon.png"),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
