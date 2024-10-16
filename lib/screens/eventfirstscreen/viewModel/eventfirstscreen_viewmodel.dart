import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

class EventFirstScreenViewModel extends GetxController {
  Map<String, dynamic>? paymentIntentData;
  BuildContext? context = Get.context;

  Future<void> makePayment() async {
    try {
      paymentIntentData = await createPaymentIntent('20', 'USD');
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentData!['client_secret'],
          googlePay: const PaymentSheetGooglePay(merchantCountryCode: '+92'),
          merchantDisplayName: 'Mubashir',
        ),
      );

      try {
        await Stripe.instance.presentPaymentSheet();
      } on StripeException catch (e) {
        ScaffoldMessenger.of(context!)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      } catch (e) {
        print('General exception: $e');
      }
    } catch (e, stacktrace) {
      ScaffoldMessenger.of(context!)
          .showSnackBar(SnackBar(content: Text('payment cenceled')));
    }
  }

  Future<Map<String, dynamic>> createPaymentIntent(
      String amount, String currency) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        body: {
          'amount': (int.parse(amount) * 100).toString(),
          'currency': currency,
          'payment_method_types[]': 'card',
        },
        headers: {
          'Authorization': 'Bearer ${Keys.secretKey}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );
      print(response.body);
      return jsonDecode(response.body);

      // if (response.statusCode == 200) {

      //    return jsonDecode(response.body);
      // } else {
      //   throw Exception('Failed to create payment intent');
      // }
    } catch (err) {
      print('Error creating payment intent: ');
      rethrow; // Optional: rethrow to handle higher-level errors
    }
  }

  void participantlist() {
    Get.toNamed(AppRoutes.ParticipantListView);
  }
}
