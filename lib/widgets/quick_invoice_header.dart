import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        QuickInvoiceAddBuutton(),
      ],
    );
  }
}

class QuickInvoiceAddBuutton extends StatelessWidget {
  const QuickInvoiceAddBuutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Width of the button
      height: 50, // Height of the button
      decoration: const BoxDecoration(
        color: Color(0xffFAFAFA), // Button background color
        shape: BoxShape.circle, // Makes it circular
      ),
      child: IconButton(
        icon: const Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
        ),
        onPressed: () {
          // Define the action here
        },
      ),
    );
  }
}
