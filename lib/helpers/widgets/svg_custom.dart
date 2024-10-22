import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgCustom extends StatelessWidget {
  const SvgCustom({
    required this.asset,
    required this.semanticsLabel,
    this.colorFilter,
    this.fit = BoxFit.contain,
    this.size,
    super.key,
  });
  final String asset;
  final ColorFilter? colorFilter;
  final BoxFit fit;
  final String semanticsLabel;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      
      asset,
      colorFilter: colorFilter,
      fit: fit,
      semanticsLabel: semanticsLabel,
      height: size,
      width: size,
    );
  }
}