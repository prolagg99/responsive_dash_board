import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xff208CC8),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff208CC8),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xff064061),
    ),
    ItemDetailsModel(
      title: 'Other',
      value: '22%',
      color: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}
