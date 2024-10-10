import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width <= 1750
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: IncomeChart()),
              // SizedBox(width: 40),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
