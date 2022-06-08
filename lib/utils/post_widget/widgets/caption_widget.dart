import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';

class CaptionWidget extends StatefulWidget {
  final Caption caption;

  const CaptionWidget({Key? key, required this.caption}) : super(key: key);

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

    if (widget.caption.text.length > 150) {
      firstHalf = widget.caption.text.substring(0, 100);
      secondHalf =
          widget.caption.text.substring(101, widget.caption.text.length);
    } else {
      firstHalf = widget.caption.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              children: <Widget>[
                Text(flag ? ("$firstHalf...") : (firstHalf + secondHalf)),
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
    );
  }
}
