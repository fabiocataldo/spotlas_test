import 'package:flutter/material.dart';
import 'package:spotlas_test/models/data_model.dart';

class UserCardWidget extends StatelessWidget {
  final Author author;

  const UserCardWidget({Key? key, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(author.photoUrl),
        ),
        title: Text(
          author.username,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          author.fullName,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const ImageIcon(
          AssetImage("assets/images/options_icon.png"),
          color: Colors.white,
        ),
      ),
    );
  }
}
