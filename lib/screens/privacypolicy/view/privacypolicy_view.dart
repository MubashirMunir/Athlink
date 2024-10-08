import 'package:flutter/material.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                """
          1. Information We Collect
          
          Personal Information: When you create an account, we collect personal information such as your name, email address, phone number, and profile details.
          
          Location Data: With your consent, we collect precise geolocation data from your mobile device to enhance your experience.
          
          Usage Data: We collect information about your interactions with our app, including browsing history, search queries, and engagement with content.
          
          Social Media Information: If you log in through social media accounts, we may access your profile information from those platforms.
          
          2. How We Use Your Information
          
          Personalization: To personalize your experience and provide tailored content and recommendations.
          
          Analytics: To perform analytics to improve our services, understand user behavior, and develop new features.
          
          Location-Based Services: specific features and advertisements, if you have opted in.
          
          3. Sharing Your Information
          
          Service Providers: We share your data with third-party service providers who assist us in operating our app, conducting our business, or providing services to you.
          
          Legal Requirements: We may disclose your information to comply with legal obligations or protect our rights.
          
          Affiliates and Partners: We may share information with our affiliates and partners to improve our services and ensure user safety.
          
          4. Data Retention
          
          Active Use: We retain your personal information for as long as your account is active.
          
          Account Closure: After you close your account, we keep your data for a three-month period to investigate any potential misconduct. Thereafter, your data is deleted, except for information required to comply with legal obligations or resolve disputes.
          
          5. Cookies and Tracking Technologies
          
          Cookies: We use cookies to remember your preferences, enhance site functionality, and track usage patterns.
          
          Web Beacons and Pixel Tags: These technologies help us understand user interactions with our emails and advertisements.
          
          6. Your Rights
          Access and Update: You can access and update your personal information through your account settings.
          
          Delete Your Data: You can delete your account, which will remove your profile from our service.
          
          Withdraw Consent: You can withdraw your consent for data processing at any time by adjusting your settings or contacting us.
          
          7.Security
          We implement industry-standard security measures to protect your data. However, no system is completely secure, and we cannot guarantee the absolute security of your information.
          8. Changes to This Policy
          We may update this Privacy Policy periodically. You will be notified of any significant changes, and continued use of our app implies acceptance of the revised policy.
          Contact UsIf you have any questions or concerns about this Privacy Policy, please contact us at [support@example.com].
          """,
                textAlign: TextAlign.left,
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        ),
      ),
    );
  }
}
