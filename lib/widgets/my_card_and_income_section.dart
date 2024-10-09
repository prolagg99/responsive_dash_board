import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // SizedBox(height: 40),
        // MyCardAndTransactionSection(),
        // SizedBox(height: 24),
        IncomeSection(),
      ],
    );
  }
}
