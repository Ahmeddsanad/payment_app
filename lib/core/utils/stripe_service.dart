import 'package:payment_app/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  PaymentIntentModel createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) {}
}

//paymentIntentObject create paymentIntent (amount - currency)
//Init payment sheet (paymentIntentClientSecret)
//presentPaymentSheet