import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_countainer.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransactionListView(),
        ],
      ),
    );
  }
}
