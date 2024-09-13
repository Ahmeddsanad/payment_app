import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitialState());

  final CheckoutRepo checkoutRepo;
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoadingState());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (l) => emit(
        PaymentFailureState(l.errMessage),
      ),
      (r) => emit(
        PaymentSuccessState(),
      ),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
