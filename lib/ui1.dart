import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthorCopiesScreen(),
    );
  }
}

class AuthorCopiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAuthorEditionCard(),
              const SizedBox(height: 20),
              _buildAdditionalCopiesCard(context),
            ],
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

  Card _buildAuthorEditionCard() {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Author Edition Copies',
              style: GoogleFonts.poppins(
                color: const Color(0xFF5E5A99),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Your Special Reward for Publishing Your Book',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF787878),
              ),
            ),
            const SizedBox(height: 16),
            _buildQuantityField(),
            const SizedBox(height: 16),
            _buildPaymentInfo(),
            const SizedBox(height: 8),
            _buildComplimentaryCopies(),
          ],
        ),
      ),
    );
  }

  Container _buildQuantityField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
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

  Row _buildPaymentInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'To Pay',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          '₹768.00 ₹0.00',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }

  Container _buildComplimentaryCopies() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFE5F6E8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, color: Color(0xFF37B34A)),
          const SizedBox(width: 8),
          Text(
            'Complimentary Copies',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xFF37B34A),
            ),
          ),
        ],
      ),
    );
  }

  Card _buildAdditionalCopiesCard(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
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
            Text(
              'with extra discount upto 20% OFF',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF787878),
              ),
            ),
            const SizedBox(height: 16),
            _buildDiscountTiles(context),
            const SizedBox(height: 20),
            _buildAddAdditionalCopiesButton(),
          ],
        ),
      ),
    );
  }

  Wrap _buildDiscountTiles(BuildContext context) {
    return Wrap(
      children: [
        _buildDiscountTile(
          context,
          '5% Flat off',
          'on orders btw 12-24 copies',
          const Color(0xFFD1E3FF),
          Colors.blue,
        ),
        _buildDiscountTile(
          context,
          '10% Flat off',
          'on orders btw 25-49 copies',
          const Color(0xFFEBD4FF),
          Colors.purple,
        ),
        _buildDiscountTile(
          context,
          '5% Flat off',
          'on orders btw 12-24 copies',
          const Color(0xFFD1E3FF),
          Colors.blue,
        ),
        _buildDiscountTile(
          context,
          '10% Flat off',
          'on orders btw 25-49 copies',
          const Color(0xFFEBD4FF),
          Colors.purple,
        ),
      ],
    );
  }

  ElevatedButton _buildAddAdditionalCopiesButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: Color(0xFF5E5A99)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
      child: Text(
        'Add Additional Copies',
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: const Color(0xFF5E5A99),
        ),
      ),
    );
  }

  Widget _buildDiscountTile(BuildContext context, String title, String subtitle,
      Color bgColor, Color textColor) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: textColor.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
