import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/home_item_model.dart';
import 'package:flutter_application_5/widgets/card_data.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory(
      {super.key, required this.itemData, required this.categorysColor});
  final ItemModel itemData;
  final Color categorysColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 90,
        color: categorysColor,
        child: Row(
          children: [
            Image.asset(
              itemData.image,
              width: MediaQuery.sizeOf(context).width / 3,
              height: 90,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                itemData.name,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
