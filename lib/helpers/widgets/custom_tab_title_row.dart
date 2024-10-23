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
