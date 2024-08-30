import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_images.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/order_info_item.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/total_price_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Image.asset(
              AppImages.cartImage,
            ),
          ),
          Column(
            children: [
              const OrderInfoItem(
                label: 'Order Subtotal',
                price: 42.97,
              ),
              const SizedBox(
                height: 3,
              ),
              const OrderInfoItem(
                label: 'Discount',
                price: 0,
              ),
              const SizedBox(
                height: 3,
              ),
              const OrderInfoItem(
                label: 'Shipping',
                price: 8,
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                width: deviceWidth / 1.2,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFC6C6C6),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TotalPriceWidget(
                price: 50.97,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomElevatedButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return PaymentDetailsView();
                    },
                  ));
                },
                label: 'Complete Payment',
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
