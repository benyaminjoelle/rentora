import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/constants/app_colors.dart';
import 'package:rentora/features/home/controller/home_controller.dart';
import 'package:rentora/features/home/widgets/house_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
 

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final Scontroller= controller.scrollController;
    
      return Scaffold(
        backgroundColor: AppColors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Scontroller.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          backgroundColor: AppColors.white,
          child: const Icon(Icons.arrow_upward),
        ),
        body: SafeArea(
          child: CustomScrollView(
            controller: Scontroller,
            slivers: [
              //rentora logo
              SliverToBoxAdapter(
                  child:Container(
                    height: 80,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/logonavy.png",
                        fit: BoxFit.cover, // preserves aspect ratio
                      ),
                    ),
                  ),

                ),


              //custom scroll 
        SliverToBoxAdapter(
          child: Container(
            // height: 230,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 //search field
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      ),
                    ),
                    hintText: "Search...",
                    prefixIcon:
                        const Icon(Icons.search, color: AppColors.mainColor),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.filter_list_sharp),
                      onPressed: () {},
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                ),
                  const SizedBox(height: 10),
                // const Text(
                //   "Location",
                //   style: TextStyle(
                //     fontWeight: FontWeight.w400,
                //     fontSize: 16,
                //     color: Colors.grey,
                //   ),
                // ),

                //dropdown menu
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color:AppColors.lightBlue,
                    ),
                    const SizedBox(width: 10),

                    Obx(
                      () => DropdownButton<String>(
                        dropdownColor: AppColors.white,
                        value: controller.selectedCity.value,
                        items: const [
                          DropdownMenuItem(value: "All", child: Text("All Cities")),
                          DropdownMenuItem(value: "NY", child: Text("New York")),
                          DropdownMenuItem(value: "LA", child: Text("Los Angeles")),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            controller.changeCity(value);
                          }
                        },
                        underline: const SizedBox(),
                      ),
                    ),
                  ],
                ),

              
             
              ],
            ),
          ),
        ),

           //main list of homes
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final house = controller.houses[index];

                    return HouseCard(
                      title: house['title'] as String,
                      location: house['location'] as String,
                      imageUrl: house['imageUrl'] as String,
                      price: house['price'] as double,
                    );
                  },
                  childCount: controller.houses.length,
                ),
              ),
            ],
          ),
        ),
      );

     }
}
