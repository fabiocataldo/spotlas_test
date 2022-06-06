import 'package:flutter/material.dart';

class PartnerCardWidget extends StatelessWidget {
  const PartnerCardWidget({Key? key}) : super(key: key);

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
          title: const Text(
            'Pachamama',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: const [
              Text(
                'Peruvian',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
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
                'Marylebone',
                style: TextStyle(color: Colors.white),
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
