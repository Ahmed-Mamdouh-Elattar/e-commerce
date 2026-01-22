import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/wishlist/presentation/widgets/favorite_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({required this.product, super.key});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.push(PageName.product, extra: product.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(4),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: product.images != null
                      ? CustomCachedNetworkImage(imageUrl: product.images!)
                      : Image.asset(Assets.images.dummyProduct1.path),
                ),
                const SizedBox(height: 8),
                Text(
                  product.title ?? "Men's T-Shirt",
                  style: AppTextStyle.medium14.copyWith(
                    color: AppColor.black100,
                  ),
                ),
                const SizedBox(height: 8),
                Text("\$${product.price ?? 150}", style: AppTextStyle.bold14),
                const SizedBox(height: 16),
              ],
            ),
            Positioned(
              top: 4,
              right: 4,
              child: FavoriteIconButton(productId: product.id),
            ),
          ],
        ),
      ),
    );
  }
}
