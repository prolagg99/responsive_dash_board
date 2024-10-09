import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '13 April 2022',
              style: AppStyles.styleMeduim16
                  .copyWith(color: const Color(0xffAAAAAA)),
            ),
            const SizedBox(height: 16),
            const TransactionItem(
              transactionModel: TransactionModel(
                title: "title",
                date: "subtitle",
                amount: r"$20,129",
                isWitrhdrawal: false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
