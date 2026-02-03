import 'package:e_commerce/core/error/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StripeService {
  Future<String> makePayment({required double amount}) async {
    try {
      final paymentId = await _createPaymentIntent(amount);

      await _displayPaymentSheet();
      return paymentId;
    } catch (e) {
      debugPrint("Stripe Service Error: $e");
      throw Failure(message: "Payment Failed");
    }
  }

  Future<String> _createPaymentIntent(double amount) async {
    final res = await Supabase.instance.client.functions.invoke(
      'stripe-payment',
      body: {'amount': amount * 100, 'currency': 'USD'},
    );
    final data = res.data;

    final String clientSecret = data['clientSecret'];
    final String paymentId = data['paymentIntentId'];
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: 'Clothes Store',
        style: ThemeMode.system,
      ),
    );
    return paymentId;
  }

  Future<void> _displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } on StripeException catch (e) {
      throw Failure(message: e.error.localizedMessage ?? "Payment Failed");
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
