import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildOrderSummaryCard extends StatefulWidget {
  final bool enableOffer; // Add this field to enable or disable the offer

  const BuildOrderSummaryCard({super.key, this.enableOffer = true});

  @override
  BuildOrderSummaryCardState createState() => BuildOrderSummaryCardState();
}

class BuildOrderSummaryCardState extends State<BuildOrderSummaryCard> {
  int quantity = 12;
  double total = 1800.00;
  double discount = 5;

  void addCopies(int count) {
    setState(() {
      quantity += count;
      total = quantity * 150.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.25; // 25% of screen width per button

    double discountedTotal =
        widget.enableOffer ? total - (total * (discount / 100)) : total;

    return Theme(
      data: ThemeData(useMaterial3: false),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            TextField(
              controller: TextEditingController(text: quantity.toString()),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Quantity (Minimum 12 copies)',
                labelStyle: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  quantity = int.tryParse(value) ?? 12;
                  total = quantity * 150.00;
                });
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: buttonWidth,
                    child: ElevatedButton(
                      onPressed: () => addCopies(12),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xffECF2FF), // Background color
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 2),

                        side: const BorderSide(
                            color: Color(0xff125EEC),
                            width: 0.5), // Border color and width
                      ),
                      child: Text(
                        'Add 12 Copies',
                        style: GoogleFonts.robotoFlex(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.blue),
                      ),
                    )),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () => addCopies(25),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      backgroundColor:
                          const Color(0xffECF2FF), // Background color

                      side: const BorderSide(
                          color: Color(0xff125EEC),
                          width: 0.5), // Border color and width
                    ),
                    child: Text(
                      'Add 25 Copies',
                      style: GoogleFonts.robotoFlex(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () => addCopies(50),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      backgroundColor:
                          const Color(0xffECF2FF), // Background color

                      side: const BorderSide(
                          color: Color(0xff125EEC),
                          width: 0.5), // Border color and width
                    ),
                    child: Text(
                      'Add 50 Copies',
                      style: GoogleFonts.robotoFlex(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            if (widget.enableOffer) ...[
              Text(
                'Total:',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(8.0),
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Text(
                      '₹',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${total.toStringAsFixed(2)}',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          decoration: widget.enableOffer
                              ? TextDecoration.lineThrough
                              : null,
                          color:
                              widget.enableOffer ? Colors.grey : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],
            Text(
              'Cost of your Order:',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey[200],
              child: Row(
                children: [
                  Text(
                    '₹',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${discountedTotal.toStringAsFixed(2)}',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: widget.enableOffer ? Colors.black : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            if (widget.enableOffer) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'You Save: ₹${(total - discountedTotal).toStringAsFixed(2)} ($discount% off)',
                    style: GoogleFonts.roboto(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
