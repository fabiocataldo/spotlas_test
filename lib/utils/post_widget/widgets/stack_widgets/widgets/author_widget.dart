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
          radius: 30,
          backgroundColor: Colors.pink,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(author.photoUrl),
          ),
        ),
        title:
            Text(author.username, style: Theme.of(context).textTheme.headline1),
        subtitle:
            Text(author.fullName, style: Theme.of(context).textTheme.headline1),
        trailing: const ImageIcon(
          AssetImage("assets/images/options_icon.png"),
          color: Colors.white,
        ),
      ),
    );
  }
}
