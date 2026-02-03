import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/presentation/providers/add_user_address_provider/add_user_address_provider.dart';
import 'package:e_commerce/feature/address/presentation/providers/gps_provider/gps_provider.dart';
import 'package:e_commerce/feature/address/presentation/widgets/building_and_floor_inputs_fields.dart';
import 'package:e_commerce/feature/address/presentation/widgets/city_and_state_inputs_fields.dart';
import 'package:e_commerce/feature/address/presentation/widgets/phone_input_field.dart';
import 'package:e_commerce/feature/address/presentation/widgets/street_address_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TakeUserAddressPageBody extends HookConsumerWidget {
  const TakeUserAddressPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final phoneValueNotifier = useValueNotifier("");
    final streetAddressController = useTextEditingController();
    final cityController = useTextEditingController();
    final stateController = useTextEditingController();
    final buildingController = useTextEditingController();
    final floorController = useTextEditingController();
    final streetAddressFocusNode = useFocusNode();
    final position = useRef<Position?>(null);
    ref.listen(gpsProvider, (previous, next) {
      next.when(
        data: (data) {
          context.pop();
          position.value = data?.position;
          cityController.text = data?.place.locality ?? "";
          stateController.text = data?.place.administrativeArea ?? "";
          String streetName = data?.place.street ?? "";
          if (streetName.contains('+') ||
              RegExp(r'^[0-9]+$').hasMatch(streetName)) {
            streetName = "";
            streetAddressFocusNode.requestFocus();
          }

          streetAddressController.text = streetName;
        },
        loading: () {
          showLoadingDialog(context);
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
      );
    });
    ref.listen(addUserAddressProvider, (previous, next) {
      next.when(
        data: (data) {
          context.pop();
          context.pop();
          showMessageDialog(
            context,
            message: "Address added successfully",
            image: Assets.images.success.path,
          );
        },
        loading: () {
          showLoadingDialog(context);
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
      );
    });
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            PhoneInputField(phoneValueNotifier: phoneValueNotifier),
            const SizedBox(height: 20),
            CityAndStateInputsFields(
              cityController: cityController,
              stateController: stateController,
            ),
            const SizedBox(height: 20),
            StreetAddressInputField(
              controller: streetAddressController,
              focusNode: streetAddressFocusNode,
            ),
            const SizedBox(height: 20),
            BuildingAndFloorInputsFields(
              buildingController: buildingController,
              floorController: floorController,
            ),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {
                ref.read(gpsProvider.notifier).getCurrentLocation();
              },
              icon: const Icon(Icons.location_on),
              label: const Text("Or use my current location"),
            ),
            const SizedBox(height: 20),
            CustomElevetedButton(
              label: "Save Address",
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ref
                      .read(addUserAddressProvider.notifier)
                      .addAddress(
                        UserAddressEntity(
                          phoneNumber: phoneValueNotifier.value,
                          city: cityController.text,
                          state: stateController.text,
                          streetAddress: streetAddressController.text,
                          building: buildingController.text,
                          floorNumber: floorController.text,
                          latitude: position.value?.latitude,
                          longitude: position.value?.longitude,
                        ),
                      );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
