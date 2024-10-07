import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(transactionModel.icon),
          title: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.subtitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
