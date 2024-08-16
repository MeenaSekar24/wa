import 'package:flutter/cupertino.dart';
import 'package:wa/offer_section/components/build_additional_copy_card/build_additional_copies_card.dart';
import 'package:wa/offer_section/components/build_author_edition_card/build_author_edition_card.dart';
import 'package:wa/offer_section/components/build_order_summary_card/build_order_summary_card.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({super.key, required this.isFree, required this.isOffer});
  final bool isFree;
  final bool isOffer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isFree) ...[
          const BuildAuthorEditionCard(),
        ],
        if (isOffer) ...[
          const BuildAdditionalCopiesCardWidget(),
        ],
        if (isFree == false || isOffer == false) ...[
          BuildOrderSummaryCard(
            enableOffer: isOffer,
          )
        ]
      ],
    );
  }
}
