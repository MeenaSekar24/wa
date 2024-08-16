import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildQuantityFieldWidget extends StatelessWidget {
  const BuildQuantityFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.black),
      ),
      child: TextField(
        readOnly: true,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: '4',
        ),
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
