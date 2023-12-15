import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class RoundedCachedImage extends StatelessWidget {
  final String? url;
  final double curve;
  final bool showBorder;
  final Widget? placeHolderWidget;
  final Widget? errorWidget;
  BoxFit? boxFit;
   RoundedCachedImage(
      {Key? key,
      this.url,
      this.showBorder = false,
      this.curve = 10,
      this.placeHolderWidget,
      this.errorWidget,
        this.boxFit
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decorationCurve = BoxDecoration(
      color: AppColors.borderColor,
      borderRadius: BorderRadius.circular(curve),
    );
    return CachedNetworkImage(
      imageUrl: url ?? ' ',
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            border: showBorder
                ? Border.all(width: 3, color: AppColors.green0.withAlpha(100))
                : null,
            image: DecorationImage(image: imageProvider, fit: boxFit ??BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(curve)),
          ),
        );
      },
      placeholder: (context, url) =>
          placeHolderWidget ?? Container(decoration: decorationCurve),
      errorWidget: (context, url, error) => this.errorWidget ?? Icon(Icons.error),
    );
  }
}
