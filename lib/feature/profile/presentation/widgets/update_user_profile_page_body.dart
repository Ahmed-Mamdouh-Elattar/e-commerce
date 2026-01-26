import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/profile/presentation/provider/get_user_data_provider/get_user_data_provider.dart';
import 'package:e_commerce/feature/profile/presentation/provider/update_user_profile_provider/update_user_profile_provider.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/user_image_edition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class UpdateUserProfilePageBody extends HookConsumerWidget {
  const UpdateUserProfilePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(getUserDataProvider);
    final pickedImage = useState<XFile?>(null);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final nameController = useTextEditingController(text: userData.name);
    ref.listen(updateUserProfileProvider, (previous, next) {
      next.when(
        data: (data) {
          context.pop();
          context.pop();
          showMessageDialog(
            context,
            message: 'Profile updated successfully',
            image: Assets.images.success.path,
          );
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            image: Assets.images.error.path,
            message: error.toString(),
          );
        },
        loading: () {
          showLoadingDialog(context);
        },
      );
    });
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const SizedBox(height: 30),
          UserImageEdition(pickedImage: pickedImage, userData: userData),
          const SizedBox(height: 30),
          Form(
            key: formKey,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              controller: nameController,
              decoration: const InputDecoration(hintText: "Enter your name"),
            ),
          ),
          const SizedBox(height: 30),

          CustomElevetedButton(
            label: 'Update',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ref
                    .read(updateUserProfileProvider.notifier)
                    .call(name: nameController.text, image: pickedImage.value);
              }
            },
          ),
        ],
      ),
    );
  }
}
