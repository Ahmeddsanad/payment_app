import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({
    super.key,
    required this.paymentMethodsIcon,
  });

  final List<String> paymentMethodsIcon;

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: PaymentItem(
              iconPath: widget.paymentMethodsIcon[index],
              isActive: activeIndex == index,
            ),
          );
        },
        itemCount: widget.paymentMethodsIcon.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 28,
          );
        },
      ),
    );
  }
}
