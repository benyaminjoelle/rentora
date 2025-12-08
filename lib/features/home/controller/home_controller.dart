import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedCity = "All".obs;

  void changeCity(String value) {
    selectedCity.value = value;
  }

  final houses = [
    {
      'title': 'Modern Apartment',
      'location': 'New York, NY',
      'imageUrl': 'assets/apartement1.jpg',
      'price': 2500.0,
    },
    {
      'title': 'Cozy Cottage',
      'location': 'Portland, OR',
      'imageUrl': 'assets/apartement2.jpg',
      'price': 1800.0,
    },
    {
      'title': 'Luxury Villa',
      'location': 'Los Angeles, CA',
      'imageUrl': 'assets/apartement1.jpg',
      'price': 5000.0,
    },
  ];
}
