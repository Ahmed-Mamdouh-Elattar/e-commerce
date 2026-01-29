import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/address/presentation/widgets/building_and_floor_inputs_fields.dart';
import 'package:e_commerce/feature/address/presentation/widgets/city_and_state_inputs_fields.dart';
import 'package:e_commerce/feature/address/presentation/widgets/phone_input_field.dart';
import 'package:e_commerce/feature/address/presentation/widgets/street_address_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TakeUserAddressPageBody extends HookWidget {
  const TakeUserAddressPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = useTextEditingController();
    final streetAddressController = useTextEditingController();
    final cityController = useTextEditingController();
    final stateController = useTextEditingController();
    final buildingController = useTextEditingController();
    final floorController = useTextEditingController();
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Form(
        child: Column(
          children: [
            const SizedBox(height: 20),
            PhoneInputField(phoneController: phoneController),
            const SizedBox(height: 20),
            CityAndStateInputsFields(
              cityController: cityController,
              stateController: stateController,
            ),
            const SizedBox(height: 20),
            StreetAddressInputField(controller: streetAddressController),
            const SizedBox(height: 20),
            BuildingAndFloorInputsFields(
              buildingController: buildingController,
              floorController: floorController,
            ),
            const SizedBox(height: 20),
            CustomElevetedButton(label: "Save Address", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
