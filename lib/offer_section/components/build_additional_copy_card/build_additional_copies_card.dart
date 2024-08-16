import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wa/offer_section/components/build_additional_copy_card/widgets/build_additional_copies_button_widget.dart';
import 'package:wa/offer_section/components/build_additional_copy_card/widgets/build_discount_tiles_widget.dart';

class BuildAdditionalCopiesCardWidget extends StatelessWidget {
  const BuildAdditionalCopiesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add more Author Copies',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                text: 'with extra discount ',
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'upto 20% OFF',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red, // You can also use Color(0xFFFF0000)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const BuildDiscountTilesWidget(),
            const SizedBox(height: 20),
            const BuildAdditionalCopiesButtonWidget(),
          ],
        ),
      ),
    );
  }
}
