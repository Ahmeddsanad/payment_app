import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_item.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_List_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({
    super.key,
    required this.paymentMethodsIcon,
  });

  final List<String> paymentMethodsIcon;

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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
          child: PaymentMethodsListView(
              paymentMethodsIcon: widget.paymentMethodsIcon),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                label: 'Pay',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ThankYouView();
                      },
                    ));
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
