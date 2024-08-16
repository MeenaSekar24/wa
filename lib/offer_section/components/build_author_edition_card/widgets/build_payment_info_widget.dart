// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildPaymentInfoWidget extends StatelessWidget {
  const BuildPaymentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'To Pay',
          style: GoogleFonts.poppins(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Text(
          '₹768.00',
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '₹0.00',
          style: GoogleFonts.roboto(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
