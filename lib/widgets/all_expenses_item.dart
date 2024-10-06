import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expense_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.expenseModel});

  final ExpenseModel expenseModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffFAFAFA), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(icon: expenseModel.icon),
          const SizedBox(height: 34),
          Text(
            expenseModel.title,
            style: AppStyles.styleMeduim16,
          ),
          const SizedBox(height: 8),
          Text(
            expenseModel.date.toString(),
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            expenseModel.amount,
            style: AppStyles.styleSemiBold24,
          ),
          // AllExpensesItemBody(),
        ],
      ),
    );
  }
}
