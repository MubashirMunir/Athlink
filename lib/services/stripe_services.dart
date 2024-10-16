import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class StripeServices {
  static Map<String, dynamic>? paymentIntent;

  static Future<void> pay(BuildContext context) async {
    await initSheet(context);
    await presentSheet(context);
  }

  static Future<void> initSheet(BuildContext context) async {
    try {
      paymentIntent = await createPayment('10', 'USD', context);

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          merchantDisplayName: 'Mubashir',
          googlePay: const PaymentSheetGooglePay(
            amount: '10',
            testEnv: true,
            merchantCountryCode: 'PK', // Use proper country code
          ),
          paymentIntentClientSecret: paymentIntent!['client_secret'],
        ),
      );
    } catch (e) {
      print('Error initializing payment sheet: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error initializing payment sheet: $e')),
      );
    }
  }

  static Future<Map<String, dynamic>> createPayment(
      String amount, String currency, BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer ${Keys.secretKey}'
        },
        body: {
          'amount': (int.parse(amount) * 100).toString(),
          'currency': currency,
          'payment_method_types[]': 'card',
        },
      );

      if (response.statusCode != 200) {
        final errorResponse = jsonDecode(response.body);
        throw Exception('Error: ${errorResponse['error']['message']}');
      }

      return jsonDecode(response.body);
    } catch (e) {
      print('Error creating payment: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error creating payment: $e')),
      );
      rethrow; // Rethrow the error for further handling if necessary
    }
  }

  static Future<void> presentSheet(BuildContext context) async {
    try {
      await Stripe.instance.presentPaymentSheet();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Payment successful!')),
      );
    } on StripeException catch (e) {
      print('Error presenting payment sheet: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error:')),
      );
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}
