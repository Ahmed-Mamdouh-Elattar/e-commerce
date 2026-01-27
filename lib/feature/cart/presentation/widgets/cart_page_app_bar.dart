import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:flutter/material.dart';

class CartPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartPageAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text("Cart"), leading: const BackIconButton());
  }
}
