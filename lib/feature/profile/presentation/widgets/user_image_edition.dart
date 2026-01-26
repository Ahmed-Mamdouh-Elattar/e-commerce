import 'dart:io';

import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImageEdition extends StatelessWidget {
  const UserImageEdition({
    required this.pickedImage,
    required this.userData,
    super.key,
  });

  final ValueNotifier<XFile?> pickedImage;
  final UserEntity userData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: pickedImage.value != null
              ? Image.file(File(pickedImage.value!.path))
              : userData.image != null
              ? CustomCachedNetworkImage(imageUrl: userData.image!)
              : Image.asset(Assets.images.profile.path),
        ),
        Positioned(
          bottom: -10,
          right: -10,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () async {
              final ImagePicker picker = ImagePicker();
              final XFile? image = await picker.pickImage(
                source: ImageSource.gallery,
              );
              if (image != null) {
                pickedImage.value = image;
              }
            },
            icon: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primary100,
              ),
              child: const Icon(Icons.edit, color: Colors.white, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
