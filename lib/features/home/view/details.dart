import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rentora/core/constants/app_colors.dart';

class Details extends StatelessWidget{
  final String title;
  final String location;
  final String imageUrl;
  final double? price;

  const Details({
    super.key,
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: CustomScrollView(
       slivers: [

         SliverToBoxAdapter(
          
          child: Stack(
            children:[
              Container(
              padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
              height: 430,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Positioned(
              top: 60,
              left: 30,
              child: CircleAvatar(
                backgroundColor: AppColors.white,
                child: IconButton(onPressed: 
                 Get.back, 
                icon:
                 Icon(Icons.arrow_back),
                 color: AppColors.mainColor,),
              ),
            ),
           Positioned(
            bottom: 20,
            left: 10,
            right: 10,
             child: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
             
              ),
              subtitle: Text(
                location,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.white,
                ),
              ),
             ),
           )
            

            ] 
          ),
          
         ),
         SliverToBoxAdapter(
        
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Description",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                height: 100,
                child: Row(
                  children:[
                    Expanded(
                      child: 
                      Text("bla bla")
              
              ),
                  ]
                ),
              ),
            ],
          ),
         )
       ],
        
      ),
    );
  }
   
} 