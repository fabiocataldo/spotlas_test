import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';

class SpotCardWidget extends StatelessWidget {
  final Spot spot;

  const SpotCardWidget({Key? key, required this.spot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        width: double.infinity,
        // height: double.infinity,
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
          ),
          title: Text(
            spot.name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Text(
                spot.types[0].name,
                style: const TextStyle(color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                child: Text(
                  '•',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                spot.location.display,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          trailing: const ImageIcon(
            AssetImage("assets/images/star_icon.png"),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
