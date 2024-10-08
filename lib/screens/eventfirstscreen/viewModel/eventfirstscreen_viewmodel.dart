import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/screens/participantlist/participantlist_view/participant_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

class EventFirstScreenViewModel extends GetxController {
  Map<String, dynamic>? paymentIntentData;

  Future<void> makePayment(BuildContext context) async {
    try {
      paymentIntentData = await createPaymentIntent('20', 'USD');
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentData!['client_secret'],
          googlePay: const PaymentSheetGooglePay(merchantCountryCode: '+92'),
          merchantDisplayName: 'Mubashir',
        ),
      );

      await displayPaymentSheet(context);
    } catch (e, s) {
      print('Payment exception: $e\n$s');
    }
  }

  Future<void> displayPaymentSheet(BuildContext context) async {
    try {
      await Stripe.instance.presentPaymentSheet();
      print('Payment successful');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Paid successfully")),
      );
      paymentIntentData = null;
    } on StripeException catch (e) {
      print('StripeException: $e');
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          content: Text("Payment cancelled"),
        ),
      );
    } catch (e) {
      print('General exception: $e');
    }
  }

  Future<Map<String, dynamic>> createPaymentIntent(
      String amount, String currency) async {
    try {
      final body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      final response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        body: body,
        headers: {
          'Authorization': 'Bearer ${API.stripePublisherKey}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to create payment intent');
      }
    } catch (err) {
      print('Error creating payment intent: ${err.toString()}');
      rethrow; // Optional: rethrow to handle higher-level errors
    }
  }

  String calculateAmount(String amount) {
    return (int.parse(amount) * 100).toString();
  }

  void participantlist() {
    Get.to(const ParticipantListView());
  }
}
