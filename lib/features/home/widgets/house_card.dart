import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/route_manager.dart';
import 'package:rentora/core/constants/app_colors.dart';

class HouseCard extends StatelessWidget{
  
  final String title;
  final String location;
  final String imageUrl;
  final double price;

  const HouseCard({
    super.key,
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.price
    });


  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

             SizedBox(height: 10),
             
          MaterialButton(
            onPressed: () { 
               //Get.to(details);
             },
            child: Positioned(
              bottom: 20,
              left: 10,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                elevation: 6,
                color: Theme.of(context).colorScheme.surface,
                child: ListTile(
                  title: Text(title),
                  subtitle: Text(location),
                  trailing: Text('\$${price.toStringAsFixed(2)} / month', style: TextStyle(color: AppColors.mainColor),),
                ),),
            ),
          ),
            ],
          ),
          SizedBox(height: 20,)
        ],
         
            ),
          );

  }
  
}