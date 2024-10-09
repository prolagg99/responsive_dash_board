import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IncomeChart(),
        SizedBox(width: 40),
        Column(
          children: [],
        ),
      ],
    );
  }
}
