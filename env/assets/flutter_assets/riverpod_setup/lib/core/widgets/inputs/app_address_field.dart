import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/async_value_error.dart';
import '../../core.dart';
import '../../styles/app_colors.dart';
import '../../models/address_model.dart';
import '../../providers/address/address_provider.dart';


class AppAddressField extends HookConsumerWidget {
  const AppAddressField({super.key, this.action, this.address, this.onChange});

  final Address? address;
  final List<Widget>? Function(
      {Address? address, String? fullAddress, String? geoLocation})? action;
  final Function({Address? address, String? fullAddress, String? geoLocation})?
      onChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Styles
    final TextStyle? labelAndHintStyle = TextStyles.h10Bold(context);

    // Initialize TextEditingControllers for each field
    final stateController = useTextEditingController(text: '');
    final cityController = useTextEditingController(text: '');
    final localityController = useTextEditingController(text: '');
    final pinCodeController = useTextEditingController(text: '');
    final streetController = useTextEditingController(text: '');
    final buildingController = useTextEditingController(text: '');
    final geoLocationController = useTextEditingController(text: '');

    // Create a list of controllers for easier management
    final controllers = [
      stateController,
      cityController,
      localityController,
      pinCodeController,
      streetController,
      buildingController,
      geoLocationController,
    ];

    // Address state and full address string
    final addressNotifier = useState(Address.empty());
    final fullAddress = useState('');
    String country = '';

    // Address Manager Provider
    final addressWat = ref.watch(addressManagerProvider);
    final addressManagerRead = ref.read(addressManagerProvider.notifier);

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
      onChange?.call(
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

    // Listen for updates from address manager
    ref.listen(
      addressManagerProvider,
      (_, next) {
        next.showAlertDialogOnError(context);
        next.maybeWhen(
          orElse: () {},
          data: (data) => showMessageSnackbar(
            context: context,
            message: 'Your Current Location Updated!',
          ),
        );
      },
    );

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
        final result = await addressManagerRead.getPlace();
        final place = result!.placemark;
        final geoLocation = result.geoLocation;
        if (place == null) return;
        stateController.text = place.administrativeArea ?? '';
        cityController.text = place.locality ?? '';
        localityController.text = place.subLocality ?? '';
        pinCodeController.text = place.postalCode ?? '';
        streetController.text = place.street ?? '';
        buildingController.text = place.name ?? '';
        geoLocationController.text = geoLocation ?? '';
        country = place.country ?? '';
      }
      manageListeners(controllers, true);
      notifyAddressChange();
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (address != null) {
          updateAddress(adrs: address);
        } else {
          updateAddress();
        }
      });
      return null;
    }, []);

    useEffect(() {
      manageListeners(controllers, true);
      return () => manageListeners(controllers, false);
    }, []);
    // UI Layout
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
              icon: addressWat.maybeWhen(
                orElse: () => const SizedBox(),
                skipError: true,
                loading: () => SpinKitDoubleBounce(
                    color: appColors.ms.black(context),
                    size: context.sizeOfHeight * 0.03),
                data: (place) => const Icon(Icons.location_searching_rounded),
              ),
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
        if (action != null)
          ...?action!(
              address: addressNotifier.value,
              fullAddress: fullAddress.value,
              geoLocation: geoLocationController.text),
      ],
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
