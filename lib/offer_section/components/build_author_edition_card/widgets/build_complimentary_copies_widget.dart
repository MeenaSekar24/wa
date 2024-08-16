import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildComplimentaryCopiesWidget extends StatelessWidget {
  const BuildComplimentaryCopiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFE5F6E8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://notionpress.com/new-rewamp/images/dashboard_2_0/compliment.png",
          ),
          const SizedBox(width: 8),
          Text(
            'Complimentary Copies',
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF37B34A),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
