import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/features/home/controller/home_controller.dart';
import 'package:rentora/features/home/widgets/house_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 95,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                       Text(
                    "Location",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Obx(
                    () => DropdownButton<String>(
                      value: controller.selectedCity.value,
                      items: const [
                        DropdownMenuItem(
                            value: "All", child: Text("All Cities")),
                        DropdownMenuItem(
                            value: "NY", child: Text("New York")),
                        DropdownMenuItem(
                            value: "LA", child: Text("Los Angeles")),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          controller.changeCity(value);
                        }
                      },
                      underline: SizedBox(), 
                    ),
                  ),
                    ],
                  ),
                 
                ],
              ),
            ),
            // SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: controller.houses.length,
                itemBuilder: (context, index) {
                  final house = controller.houses[index];
                  return HouseCard(
                    title: house['title'] as String,
                    location: house['location'] as String,
                    imageUrl: house['imageUrl'] as String,
                    price: house['price'] as double,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
