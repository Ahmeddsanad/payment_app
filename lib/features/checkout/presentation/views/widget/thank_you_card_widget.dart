import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_row_thank_you_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/total_price_widget.dart';
import 'package:svg_flutter/svg.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 672,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 80,
          bottom: 20,
        ),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.800000011920929),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomRowThankYouCard(
              title: 'Date',
              titleValue: '01/24/2024',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomRowThankYouCard(
              title: 'Time',
              titleValue: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomRowThankYouCard(
              title: 'To',
              titleValue: 'Giza, Cairo',
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 320,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.5,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFC6C6C6),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TotalPriceWidget(
              price: 50.97,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 305,
              height: 73,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.mastercard,
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Credit Card',
                          style: styles.style18,
                        ),
                        Text(
                          'Mastercard **78 ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.699999988079071),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.109,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.scanCode,
                ),
                Spacer(),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: styles.style24.copyWith(
                        color: Color(0xFF34A853),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
