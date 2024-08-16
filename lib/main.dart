import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wa/offer_section/components/build_order_summary_card/build_order_summary_card.dart';
import 'package:wa/offer_section/offer_section.dart';
import 'package:wa/star.dart';
import 'package:wa/ui2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthorCopiesScreen(),
    );
  }
}

class AuthorCopiesScreen extends StatelessWidget {
  const AuthorCopiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: _buildAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [OfferSection(isFree: true, isOffer: true)],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Author Edition Copies'),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    );
  }
}
