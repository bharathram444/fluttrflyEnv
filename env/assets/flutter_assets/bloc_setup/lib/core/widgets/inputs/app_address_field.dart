import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../core.dart';
import '../../styles/app_colors.dart';
import '../../models/address_model.dart';
import '../../cubit/address/address_cubit.dart';

class AppAddressField extends StatefulWidget {
  const AppAddressField(
      {super.key, this.action, this.initialAddress, this.onChange});

  final Address? initialAddress;
  final List<Widget>? Function(
      {Address? address, String? fullAddress, String? geoLocation})? action;
  final Function({Address? address, String? fullAddress, String? geoLocation})?
      onChange;

  @override
  State<AppAddressField> createState() => _AppAddressFieldState();
}

class _AppAddressFieldState extends State<AppAddressField> {
  // Initialize TextEditingControllers for each field
  late TextEditingController stateController;
  late TextEditingController cityController;
  late TextEditingController localityController;
  late TextEditingController pinCodeController;
  late TextEditingController streetController;
  late TextEditingController buildingController;
  late TextEditingController geoLocationController;
  late List<TextEditingController> controllers;
  @override
  void initState() {
    stateController = TextEditingController(text: '');
    cityController = TextEditingController(text: '');
    localityController = TextEditingController(text: '');
    pinCodeController = TextEditingController(text: '');
    streetController = TextEditingController(text: '');
    buildingController = TextEditingController(text: '');
    geoLocationController = TextEditingController(text: '');

    // Create a list of controllers for easier management
    controllers = [
      stateController,
      cityController,
      localityController,
      pinCodeController,
      streetController,
      buildingController,
      geoLocationController,
    ];
    updateAddress(adrs: widget.initialAddress);
    super.initState();
  }

  // Address state and full address string
  final addressNotifier = ValueNotifier(Address.empty());
  final fullAddress = ValueNotifier('');
  String country = '';

  // Utility: Notify parent widget when address changes
  void notifyAddressChange() {
    final updatedAddress = Address(
      stateName: stateController.text,
      city: cityController.text,
      locality: localityController.text,
      pinCode: pinCodeController.text,
      street: streetController.text,
      buildingNumber: buildingController.text,
      country: country,
    );
    if (addressNotifier.value == updatedAddress) return;
    fullAddress.value =
        '${updatedAddress.buildingNumber}/${updatedAddress.street}/${updatedAddress.locality}/${updatedAddress.city}/${updatedAddress.stateName}/${updatedAddress.pinCode}/${updatedAddress.country}';
    addressNotifier.value = updatedAddress;
    widget.onChange?.call(
      address: updatedAddress,
      fullAddress: fullAddress.value,
      geoLocation: geoLocationController.text,
    );
  }

  // Utility: Add or remove listeners for all controllers
  void manageListeners(List<TextEditingController> controllers, bool add) {
    for (var controller in controllers) {
      if (add) {
        controller.addListener(notifyAddressChange);
      } else {
        controller.removeListener(notifyAddressChange);
      }
    }
  }

  // Update address fields either from Placemark or Address
  void updateAddress({Address? adrs, String? geoLocation}) async {
    manageListeners(controllers, false);
    if (adrs != null) {
      stateController.text = adrs.stateName;
      cityController.text = adrs.city;
      localityController.text = adrs.locality;
      pinCodeController.text = adrs.pinCode;
      streetController.text = adrs.street;
      buildingController.text = adrs.buildingNumber;
      geoLocationController.text = geoLocation ?? '';
      country = adrs.country;
    } else {
      await context.cubit<AddressCubit>().getPlace().then(
        (value) {
          if (context.mounted) {
            final addressState = context.read<AddressCubit>().state;
            final place = addressState.address;
            final geoLocation =
                '${addressState.latitude},${addressState.longitude}';
            if (place == null) return;
            stateController.text = place.stateName;
            cityController.text = place.city;
            localityController.text = place.locality;
            pinCodeController.text = place.pinCode;
            streetController.text = place.street;
            buildingController.text = place.buildingNumber;
            geoLocationController.text = geoLocation;
            country = place.country;
          }
        },
      );
    }
    manageListeners(controllers, true);
    notifyAddressChange();
  }

  @override
  Widget build(BuildContext context) {
    // Styles
    final TextStyle? labelAndHintStyle = TextStyles.h10Bold(context);
    // useEffect(() {
    //   WidgetsBinding.instance.addPostFrameCallback((_) async {
    //     if (address != null) {
    //       updateAddress(adrs: address);
    //     } else {
    //       updateAddress();
    //     }
    //   });
    //   return null;
    // }, []);

    // useEffect(() {
    //   manageListeners(controllers, true);
    //   return () => manageListeners(controllers, false);
    // }, []);
    // UI Layout
    return BlocConsumer<AddressCubit, AddressState>(
      listener: (context, state) {
        if (state.error.containsValidValue) {
          DialogsX.showErrorDialog(context, content: state.error!);
        }
        if (state.isSuccess) {
          showMessageSnackbar(
            context: context,
            message: 'Your Current Location Updated!',
          );
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            gapH8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CaptionText(
                  title: 'Address',
                  isRequired: false,
                ),
                IconButton(
                  onPressed: () => updateAddress(),
                  icon: state.isLoading
                      ? SpinKitDoubleBounce(
                          color: appColors.ms.black(context),
                          size: context.sizeOfHeight * 0.03)
                      : const Icon(Icons.location_searching_rounded),
                  tooltip: 'current location',
                ),
              ],
            ),
            Structure(
                firstChild: AppTextField(
                  inputType: TextInputType.streetAddress,
                  controller: stateController,
                  hintText: 'State',
                  labelText: 'State',
                  contentPaddingVertical: 0,
                  contentPaddingHorizontal: 8,
                  labelAndHintStyle: labelAndHintStyle,
                ),
                secondChild: AppTextField(
                  inputType: TextInputType.streetAddress,
                  controller: cityController,
                  hintText: 'City/Town',
                  labelText: 'City/Town',
                  contentPaddingVertical: 0,
                  contentPaddingHorizontal: 8,
                  labelAndHintStyle: labelAndHintStyle,
                )),
            gapH8,
            Structure(
                firstChild: AppTextField(
                  inputType: TextInputType.streetAddress,
                  controller: localityController,
                  hintText: 'Locality',
                  labelText: 'Locality',
                  contentPaddingVertical: 0,
                  contentPaddingHorizontal: 8,
                  labelAndHintStyle: labelAndHintStyle,
                ),
                secondChild: AppTextField(
                  controller: pinCodeController,
                  inputType: TextInputType.number,
                  hintText: 'code',
                  labelText: 'PIN code',
                  contentPaddingVertical: 0,
                  contentPaddingHorizontal: 8,
                  labelAndHintStyle: labelAndHintStyle,
                )),
            gapH8,
            Structure(
                firstFlex: 2,
                firstChild: AppTextField(
                  inputType: TextInputType.streetAddress,
                  controller: streetController,
                  hintText: 'Area/Street',
                  labelText: 'Village/Area/Street',
                  contentPaddingVertical: 0,
                  contentPaddingHorizontal: 8,
                  labelAndHintStyle: labelAndHintStyle,
                ),
                secondChild: AppTextField(
                  inputType: TextInputType.streetAddress,
                  controller: buildingController,
                  hintText: 'Shop number',
                  labelText: 'Name',
                  contentPaddingVertical: 0,
                  contentPaddingHorizontal: 8,
                  labelAndHintStyle: labelAndHintStyle,
                )),
            gapH8,
            AppTextField(
              inputType: TextInputType.streetAddress,
              controller: geoLocationController,
              hintText: 'GPS Coordinates',
              labelText: 'GPS Coordinates',
              contentPaddingVertical: 0,
              contentPaddingHorizontal: 8,
              labelAndHintStyle: labelAndHintStyle,
            ),
            gapH8,
            if (widget.action != null)
              ...?widget.action!(
                  address: addressNotifier.value,
                  fullAddress: fullAddress.value,
                  geoLocation: geoLocationController.text),
          ],
        );
      },
    );
  }
}

class Structure extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;
  final int firstFlex;
  final int secondFlex;

  const Structure({
    super.key,
    required this.firstChild,
    required this.secondChild,
    this.firstFlex = 1,
    this.secondFlex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(flex: firstFlex, child: firstChild),
        gapW8,
        Flexible(flex: secondFlex, child: secondChild),
      ],
    );
  }
}
