import 'package:flutter/material.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text(
          "data",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          "data",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          "data",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          "data",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          "data",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
