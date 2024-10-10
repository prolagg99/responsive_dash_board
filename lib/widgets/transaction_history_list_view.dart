import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: r"$20,129",
      isWitrhdrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      isWitrhdrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      isWitrhdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map(
        (e) {
          return TransactionItem(transactionModel: e);
        },
      ).toList(),
    );
  }
}
