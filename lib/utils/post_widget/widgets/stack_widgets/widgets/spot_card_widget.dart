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
      child: ListTile(
        leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(spot.logo.url),
            )),
        title: Text(spot.name, style: Theme.of(context).textTheme.headline1),
        subtitle: Row(
          children: [
            Text("${spot.types[0].name} • ",
                style: Theme.of(context).textTheme.headline1),
            Text(spot.location.display,
                style: Theme.of(context).textTheme.headline1),
          ],
        ),
        trailing: const ImageIcon(
          AssetImage("assets/images/star_icon.png"),
          color: Colors.white,
        ),
      ),
    );
  }
}
