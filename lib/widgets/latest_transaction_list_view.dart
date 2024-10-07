import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    TransactionModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
      icon: Assets.imagesAvatar1,
    ),
    TransactionModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
      icon: Assets.imagesAvatar2,
    ),
    TransactionModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
      icon: Assets.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: items
    //         .map(
    //           (e) => IntrinsicWidth(
    //             child: UserInfoListTile(
    //               transactionModel: e,
    //             ),
    //           ),
    //         )
    //         .toList(),
    //   ),
    // );

    return SizedBox(
      height: 80, // the amount of items is 72 in figma file
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              transactionModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
