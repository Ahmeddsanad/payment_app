abstract class PaymentState {}

class PaymentInitialState extends PaymentState {}

class PaymentSuccessState extends PaymentState {}

class PaymentLoadingState extends PaymentState {}

class PaymentFailureState extends PaymentState {
  final String errMessage;

  PaymentFailureState(this.errMessage);
}
