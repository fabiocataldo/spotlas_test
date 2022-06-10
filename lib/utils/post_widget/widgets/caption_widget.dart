import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';

class CaptionWidget extends StatefulWidget {
  final Caption caption;
  final Author author;

  const CaptionWidget({Key? key, required this.caption, required this.author})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CaptionWidgetState createState() => _CaptionWidgetState();
}

class _CaptionWidgetState extends State<CaptionWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.caption.text.length > 120) {
      firstHalf = (widget.caption.text.substring(0, 130));
      secondHalf =
          widget.caption.text.substring(131, widget.caption.text.length);
    } else {
      firstHalf = widget.caption.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0,
        ),
        child: secondHalf.isEmpty
            ? Text.rich(TextSpan(children: [
                TextSpan(
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  text: "${widget.author.username} ",
                ),
                TextSpan(text: firstHalf)
              ]))
            : Column(
                children: <Widget>[
                  Text.rich(flag
                      ? TextSpan(children: [
                          TextSpan(
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              text: "${widget.author.username} "),
                          TextSpan(text: "$firstHalf..."),
                        ])
                      : TextSpan(children: [
                          TextSpan(
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              text: "${widget.author.username} "),
                          TextSpan(text: firstHalf + secondHalf),
                        ])),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          flag ? "more" : "less",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
