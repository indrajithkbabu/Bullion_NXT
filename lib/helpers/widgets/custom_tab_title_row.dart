import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:flutter/material.dart';


class CustomTabTitleRow extends StatelessWidget {
  final List<String> titles; // Pass list of titles
  final List<Color>? backgroundColors; // Background color for each tab
  final List<Color>? textColors;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
 // Gap between each tab

  const CustomTabTitleRow({
    super.key,
    required this.titles,
    this.backgroundColors ,
    this.textColors ,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.height,
    this.width
    // Default gap size
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < titles.length; i++) ...[
          Expanded(
            child: Container(
              height:height?? AppValues.containerTileHeight,
              width: width?? AppValues.containerTileWidth,
              color: backgroundColors?[i],
              child: Center(
                child: Text(
                  titles[i],
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: textColors?[i],
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          if (i < titles.length - 1) // Add gap after each except the last one
             Commons.gapMinute(isHeight: false),
        ]
      ],
    );
  }
}

// class MetalTabTitleRow extends StatelessWidget {
//   const MetalTabTitleRow({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: Container(
//             height: AppValues.containerTileHeight,
//             width: AppValues.containerTileWidth,
//             color: AppColors.primary,
//             child: Center(
//                 child: Text(
//               'Metals',
//               style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                     color: AppColors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//               overflow: TextOverflow.ellipsis,
//             )),
//           ),
//         ),
//         Commons.gapMinute(isHeight: false),
//         Expanded(
//           child: Container(
//             height: AppValues.containerTileHeight,
//             width: AppValues.containerTileWidth,
//             color: AppColors.primary,
//             child: Center(
//                 child: Text(
//               'Sell diff',
//               style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                     color: AppColors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//               overflow: TextOverflow.ellipsis,
//             )),
//           ),
//         ),
//         Commons.gapMinute(isHeight: false),
//         Expanded(
//           child: Container(
//             height: AppValues.containerTileHeight,
//             width: AppValues.containerTileWidth,
//             color: AppColors.primary,
//             child: Center(
//                 child: Text(
//               'Buy diff',
//               style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                     color: AppColors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//               overflow: TextOverflow.ellipsis,
//             )),
//           ),
//         ),
//         Commons.gapMinute(isHeight: false),
//         Expanded(
//           child: Container(
//             height: AppValues.containerTileHeight,
//             width: AppValues.containerTileWidth,
//             color: AppColors.primary,
//             child: Center(
//                 child: Text(
//               'T+',
//               style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                     color: AppColors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//               overflow: TextOverflow.ellipsis,
//             )),
//           ),
//         ),
//         Commons.gapMinute(isHeight: false),
//         Expanded(
//           child: Container(
//             height: AppValues.containerTileHeight,
//             width: AppValues.containerTileWidth,
//             color: AppColors.primary,
//             child: Center(
//                 child: Text(
//               'Display',
//               style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                     color: AppColors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//               overflow: TextOverflow.ellipsis,
//             )),
//           ),
//         ),
//       ],
//     );
//   }
// }