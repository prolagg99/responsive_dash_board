import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expense_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveAllExpenses extends StatelessWidget {
  const InActiveAllExpenses({super.key, required this.expenseModel});

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

class ActiveAllExpenses extends StatelessWidget {
  const ActiveAllExpenses({super.key, required this.expenseModel});

  final ExpenseModel expenseModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: expenseModel.icon,
            iconBackgroundColor: const Color(0xffFFFFFF).withOpacity(.10),
            iconColor: Colors.white,
          ),
          const SizedBox(height: 34),
          Text(
            expenseModel.title,
            style: AppStyles.styleMeduim16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            expenseModel.date.toString(),
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(height: 16),
          Text(
            expenseModel.amount,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
          // AllExpensesItemBody(),
        ],
      ),
    );
  }
}
