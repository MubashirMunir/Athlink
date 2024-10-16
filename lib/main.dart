import 'package:athlink/Api/api.dart';
import 'package:athlink/Localization/translation_message.dart';
import 'package:athlink/Routes/app_pages.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Stripe.publishableKey = Keys.polishableAbleKey;

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Athlink',
        getPages: AppPages.routes,
        initialRoute: AppRoutes.splashView,
        translations: Translation(),
        supportedLocales: const [
          Locale("en", "US"),
          Locale("ar", "AE"),
        ],
        locale: Get.deviceLocale,
        localizationsDelegates: const [
          // GlobalMaterialLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
          // GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}

// comands for localization and key filder

// flutter pub run easy_localization:generate --source-dir ./assets/localization --output-dir ./lib/localization/keys

// flutter pub run easy_localization:generate --source-dir ./assets/localization --output-dir ./lib/localization -f keys

// flutter pub run easy_localization:generate -h
