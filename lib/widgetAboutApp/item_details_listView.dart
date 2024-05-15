// ignore_for_file: file_names

import 'package:dash_board_responsive/models/item_details_model.dart';
import 'package:dash_board_responsive/widgetAboutApp/bottom_income.dart';
import 'package:flutter/material.dart';

class ItemDetailsListView extends StatelessWidget {
  const ItemDetailsListView({super.key});
  static const List<ItemDetailsModel> itemList = [
    ItemDetailsModel(
      color: Color(0xFF044949),
      title: 'Design Service',
      ratio: '40%',
    ),
    ItemDetailsModel(
      color: Colors.blue,
      title: 'Design Product',
      ratio: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xFF064060),
      title: 'Product Royaleti',
      ratio: '20%',
    ),
    ItemDetailsModel(
      color: Color(0xFFAAAAAA),
      title: 'Other',
      ratio: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return ItemDetails(
          itemDetailsModel: itemList[index],
        );
      },
    );
  }
}
