import 'package:athlink/module/termofservice_model/termofservice.dart';
import 'package:athlink/screens/terms_of_service/terms_of_service_viewModel/terms_of_service_vewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsOfServiceView extends StatelessWidget {
  const TermsOfServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TermsOfServiceVewmodel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Terms of Service',
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Column(
                    children: List.generate(terms.length, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            terms[index].heading,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Text(terms[index].details),
                      ),
                    ],
                  );
                })),
              ),
            ));
  }
}
