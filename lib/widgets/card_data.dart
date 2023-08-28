import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/home_item_model.dart';

class CardData extends StatelessWidget {
  const CardData({super.key, required this.itemData});
  final ItemModel itemData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(children: [
            // * Text
            Text(itemData.image,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            Text(itemData.name,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
          ]),
        ),
      ],
    );
  }
}
