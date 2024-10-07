import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expense_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<ExpenseModel> expenseModel = [
    const ExpenseModel(
        icon: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        amount: r"$20,129"),
    const ExpenseModel(
        icon: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        amount: r"$20,129"),
    const ExpenseModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        amount: r"$20,129"),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: expenseModel.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;

          if (index != 2) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: AllExpensesItem(
                    expenseModel: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                  expenseModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          }
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
