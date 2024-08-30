import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          PaymentMethodsListView(paymentMethodsIcon: paymentMethodsIcon),
          CustomCreditCard(),
        ],
      ),
    );
  }
}

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderNumber = '', cvvCode = '';

  bool showBackView = false;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: avoid_types_as_parameter_names
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderNumber,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
          isHolderNameVisible: true,
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderNumber,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardHolderNumber = creditCardModel.cardHolderName;
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cvvCode = creditCardModel.cvvCode;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: formKey,
        ),
      ],
    );
  }
}
