import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wa/offer_section/components/build_author_edition_card/widgets/build_complimentary_copies_widget.dart';
import 'package:wa/offer_section/components/build_author_edition_card/widgets/build_payment_Info_widget.dart';
import 'package:wa/offer_section/components/build_author_edition_card/widgets/build_quantity_field_widget.dart';

class BuildAuthorEditionCard extends StatelessWidget {
  const BuildAuthorEditionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: const Color(0xffD2B5FF),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.network(
                      "https://notionpress.com/new-rewamp/images/dashboard_2_0/edition.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Author Edition Copies',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF5E5A99),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Your Special Reward for Publishing Your Book',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xFF787878),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Quantity',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const BuildQuantityFieldWidget(),
              const SizedBox(height: 16),
              const BuildPaymentInfoWidget(),
              const SizedBox(height: 8),
              const BuildComplimentaryCopiesWidget()
            ],
          ),
        ),
      ),
    );
  }
}
