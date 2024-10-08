import 'package:get/get.dart';

class ParticipantlistViewmodel extends GetxController {
  bool filter = false;
  void tap() {
    filter = !filter;
    update();
  }

  RxString dropdownvalue = ''.obs;
  RxString dropdownvalue1 = ''.obs;
  RxString dropdownvalue2 = ''.obs;
  RxString dropdownvalue3 = ''.obs;
  RxString dropdownvalue4 = ''.obs;
  RxList<String> experience = [
    'Expert',
    'Intermediat',
    'Beginner',
  ].obs;

  RxList<String> sports = [
    'Cricket',
    'Hockey',
    'Vollyboll',
    'Tennis',
    'Polo',
  ].obs;
  RxList<String> city = [
    'Bahawalnagar',
    'Karachi',
    'Dunga Bunga',
    'Bahwalpur',
    'Chishtian',
  ].obs;
  RxList<String> country = [
    'Pak',
    'India',
    'Afghan',
    'Russia',
    'Poland',
  ].obs;
}
