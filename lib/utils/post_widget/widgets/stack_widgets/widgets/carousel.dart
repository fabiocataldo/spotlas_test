import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key, required this.imgList}) : super(key: key);

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final double height = MediaQuery.of(context).size.height;
        final double width = MediaQuery.of(context).size.width;
        return CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: height,
            viewportFraction: 1,
            aspectRatio: 1,
            enlargeCenterPage: false,
            // autoPlay: false,
          ),
          items: imgList
              .map((item) => Center(
                      child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                  )))
              .toList(),
        );
      },
    );
  }
}
