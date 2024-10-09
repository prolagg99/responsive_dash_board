import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          title: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.date,
            style: AppStyles.styleRegular16
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
              color: transactionModel.isWitrhdrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B),
            ),
          ),
        ),
      ),
    );
  }
}
