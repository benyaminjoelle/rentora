// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:rentora/core/constants/app_colors.dart';
// import 'package:rentora/features/home/view/details.dart';

// class HouseCard extends StatelessWidget {
//   final String title;
//   final String location;
//   final String imageUrl;
//   final double price;

//   const HouseCard({
//     super.key,
//     required this.title,
//     required this.location,
//     required this.imageUrl,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(15),
//           onTap: () {
//            Get.to(() => Details());
//           },
//           child: Stack(
//             children: [
            
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.asset(
//                     imageUrl,
//                     height: 400,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                     filterQuality: FilterQuality.high,
//                   ),
//                 ),
//               ),

            
//               Positioned(
//                 bottom: 20,
//                 left: 25,
//                 right: 25,
//                 child: Card(
//                   elevation: 6,
//                   color: Theme.of(context).cardColor,
//                   child: ListTile(
//                     title: Text(
//                       title,
//                       style: const TextStyle(
//                         color: AppColors.mainColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Text(
//                       location,
//                       style: const TextStyle(color: AppColors.mainColor),
//                     ),
//                     trailing: Text(
//                       '\$${price.toStringAsFixed(2)} / month',
//                       style: const TextStyle(color: AppColors.gold),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/constants/app_colors.dart';
import 'package:rentora/features/home/view/details.dart';

class HouseCard extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;
  final double price;

  const HouseCard({
    super.key,
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Get.to(() =>  Details(
            title: title,
            location: location,
            imageUrl: imageUrl, 
            price: null,)),
          child: Stack(
            children: [
              _buildImage(),
              _buildInfoCard(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          imageUrl,
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  Widget _buildInfoCard(ThemeData theme) {
    return Positioned(
      bottom: 20,
      left: 25,
      right: 25,
      child: Card(
        elevation: 6,
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppColors.mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            location,
            style: theme.textTheme.bodySmall?.copyWith(
              color: AppColors.mainColor,
            ),
          ),
          trailing: Text(
            '\$${price.toStringAsFixed(2)} / month',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.gold,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
