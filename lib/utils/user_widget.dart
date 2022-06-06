import 'package:flutter/material.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pink, width: 3),
            shape: BoxShape.circle,
            color: Colors.grey[300],
          ),
        ),
        title: const Text(
          'fabiocataldo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          'Fabio Cataldo',
          style: TextStyle(color: Colors.white),
        ),
        trailing: const ImageIcon(
          AssetImage("assets/images/options_icon.png"),
          color: Colors.white,
        ),
      ),
    );
  }
}
