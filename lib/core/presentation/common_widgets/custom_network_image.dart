import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final String? errorImage;
  final String? placeholderImage;
  final double? height;
  final double? width;
  final bool withoutSize;
  final BoxFit? fit;
  final bool withBorder;
  final double? borderRadius;
  final Function()? onTap;
  final Function()? onLongPress;

  const CustomNetworkImage(
      {super.key,
      required this.imageUrl,
      this.errorImage,
      this.placeholderImage,
      this.height,
      this.width,
      this.fit,
      this.withBorder = false,
      this.onTap,
      this.withoutSize = false,
      this.onLongPress,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: ClipRRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: withoutSize ? null : (width ?? 20.sp),
              height: withoutSize ? null : (height ?? 20.sp),
              fit: fit ?? BoxFit.cover,
              // errorWidget: (context, url, error) => ClipRRect(
              //     borderRadius: BorderRadius.circular(borderRadius ?? 0),
              //     child: const Center(child: Icon(Icons.error))),
            )));
  }
}
