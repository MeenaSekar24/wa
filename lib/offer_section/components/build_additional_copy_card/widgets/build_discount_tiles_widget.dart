import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildDiscountTilesWidget extends StatelessWidget {
  const BuildDiscountTilesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> discountData = [
      {'title': '5% Flat off', 'subtitle': 'on orders btw 12-24 copies'},
      {'title': '10% Flat off', 'subtitle': 'on orders btw 25-49 copies'},
      {'title': '15% Flat off', 'subtitle': 'on orders btw 50-99 copies'},
      {'title': '20% Flat off', 'subtitle': 'on orders btw 100+ copies'},
    ];

    final List<Color> bgColors = [
      const Color(0xFFF3F6FF),
      const Color(0xFFFDEFFF),
      const Color(0xFFFFF4F1),
      const Color(0xFFFFF4F8),
    ];

    final List<Color> iconColors = [
      Colors.blue,
      Colors.purple,
      Colors.red,
      Colors.green,
    ];

    return Wrap(
      spacing: 10,
      children: discountData.asMap().entries.map((entry) {
        final index = entry.key;
        final title = entry.value['title']!;
        final subtitle = entry.value['subtitle']!;
        final bgColor = bgColors[index % bgColors.length];
        final iconColor = iconColors[index % iconColors.length];

        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.36,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 05),
                  child: CircleAvatar(
                    backgroundColor: iconColor.withOpacity(1),
                    radius: 08,
                    child: const Icon(
                      Icons.percent,
                      size: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 07,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
