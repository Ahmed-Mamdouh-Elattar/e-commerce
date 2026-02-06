import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.imageUrl,
    super.key,
    this.boxFit,
  });
  final String imageUrl;
  final BoxFit? boxFit;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: boxFit ?? BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(value: downloadProgress.progress),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
