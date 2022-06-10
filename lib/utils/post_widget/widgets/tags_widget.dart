import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';

class TagsWidget extends StatelessWidget {
  final List<PostTag> posttags;

  const TagsWidget({Key? key, required this.posttags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: posttags.length,
          itemBuilder: (context, index) {
            final posttag = posttags[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                posttag.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ),
    );
  }
}
