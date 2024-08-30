import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_item.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_List_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({
    super.key,
    required this.paymentMethodsIcon,
  });

  final List<String> paymentMethodsIcon;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: PaymentMethodsListView(paymentMethodsIcon: paymentMethodsIcon),
        ),
        const SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                label: 'Pay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
