import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expense_model.dart';
import 'package:responsive_dash_board/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expenseModel, required this.isSelected});

  final ExpenseModel expenseModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpenses(
            expenseModel: expenseModel,
          )
        : InActiveAllExpenses(
            expenseModel: expenseModel,
          );
  }
}
