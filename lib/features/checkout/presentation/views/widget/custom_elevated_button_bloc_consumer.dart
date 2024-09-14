import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:payment_app/features/checkout/data/models/amount_model/details.dart';
import 'package:payment_app/features/checkout/data/models/item_list_model/item.dart';
import 'package:payment_app/features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit/payment_state.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_elevated_button.dart';

class CustomElevatedButtomBlocConsumer extends StatelessWidget {
  const CustomElevatedButtomBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccessState) {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const ThankYouView();
            },
          ));
        }
        if (state is PaymentFailureState) {
          SnackBar snackBar = SnackBar(
            content: Text(state.errMessage),
          );
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          onTap: () {
            // BlocProvider.of<PaymentCubit>(context).makePayment(
            //   paymentIntentInputModel: PaymentIntentInputModel(
            //     amount: '100',
            //     currency: 'USD',
            //     customerId: ApiKeys.customerId,
            //   ),
            // );

            var transactions = getTransaction();

            executePaypalPayment(context, transactions);
          },
          isLoading: state is PaymentLoadingState ? true : false,
          label: 'Continue',
        );
      },
    );
  }

  void executePaypalPayment(BuildContext context,
      ({AmountModel amount, ItemListModel itemList}) transactions) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return PaypalCheckoutView(
          sandboxMode: true,
          clientId: ApiKeys.payPalClientKey,
          secretKey: ApiKeys.paySecretKey,
          transactions: [
            {
              "amount": transactions.amount.toJson(),
              "description": "The payment transaction description.",
              "item_list": {
                "items": transactions.amount.toJson(),
              }
            }
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
            Navigator.pop(context);
          },
          onError: (error) {
            log("onError: $error");
            Navigator.pop(context);
          },
          onCancel: () {
            print('cancelled:');
            Navigator.pop(context);
          },
        );
      },
    ));
  }
}

({AmountModel amount, ItemListModel itemList}) getTransaction() {
  var amount = AmountModel(
    currency: 'USD',
    details: Details(
      shipping: "0",
      subtotal: "100",
      shippingDiscount: 0,
    ),
    total: "100",
  );

  List<OrderItemModel> Orders = [
    OrderItemModel(
      currency: "USD",
      name: "Apple",
      price: "4",
      quantity: 10,
    ),
    OrderItemModel(
      currency: "USD",
      name: "Apple",
      price: "5",
      quantity: 12,
    ),
  ];

  var itemList = ItemListModel(orders: Orders);

  return (
    amount: amount,
    itemList: itemList,
  );
}
