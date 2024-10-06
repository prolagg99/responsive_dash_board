import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expense_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const List<ExpenseModel> expenseModel = [
    ExpenseModel(
        icon: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        amount: "20,129"),
    ExpenseModel(
        icon: Assets.imagesBalance,
        title: 'Income',
        date: 'April 2022',
        amount: "20,129"),
    ExpenseModel(
        icon: Assets.imagesBalance,
        title: 'Expenses',
        date: 'April 2022',
        amount: "20,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AllExpensesItem(
            expenseModel: expenseModel[0],
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AllExpensesItem(
            expenseModel: expenseModel[1],
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AllExpensesItem(
            expenseModel: expenseModel[2],
          ),
        ),
      ],
    );
  }
}
