import 'package:flutter/material.dart';

class QuickInvoiceAddBuutton extends StatelessWidget {
  const QuickInvoiceAddBuutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48, // Width of the button
      height: 48, // Height of the button
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
