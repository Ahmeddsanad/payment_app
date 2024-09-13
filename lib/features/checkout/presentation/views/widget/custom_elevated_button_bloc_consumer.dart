import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          onTap: () {
            BlocProvider.of<PaymentCubit>(context).makePayment(
                paymentIntentInputModel: PaymentIntentInputModel(
              amount: '100',
              currency: 'USD',
            ));
          },
          isLoading: state is PaymentLoadingState ? true : false,
          label: 'Continue',
        );
      },
    );
  }
}
