import 'package:flutter/material.dart';
import 'package:spotlas_test/utils/carousel.dart';
import 'package:spotlas_test/utils/partner_widget.dart';
import 'package:spotlas_test/utils/user_widget.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(children: [
        CarouselWidget(),
        const Align(
          alignment: AlignmentDirectional.topCenter,
          child: UserCardWidget(),
        ),
        const Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: PartnerCardWidget(),
        ),
      ]),
    );
  }
}
