import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../core.dart';
import '../../models/address_model.dart';

part 'address_cubit.freezed.dart';

class AddressCubit extends AppBaseCubit<AddressState> {
  AddressCubit() : super(AddressState.initial());

  /// Gets the current place using geolocation.
  Future<void> getPlace() async {
    emitSafeState(state.copyWith(
        isLoading: true, isSuccess: false, error: null)); // Set loading state
    try {
      final position = await _getCurrentPosition();
      if (position == null) return;

      final place = await _getAddressFromLatLng(position);
      Address address = Address(
          country: place?.country ?? '',
          stateName: place?.administrativeArea ?? '',
          city: place?.locality ?? '',
          locality: place?.subLocality ?? '',
          pinCode: place?.postalCode ?? '',
          street: place?.street ?? '',
          buildingNumber: place?.name ?? '');
      emitSafeState(state.copyWith(
        isLoading: false,
        isSuccess: true,
        address: address,
        latitude: position.latitude,
        longitude: position.longitude,
        error: null,
      ));
    } catch (e) {
      emitSafeState(state.copyWith(
          isLoading: false, isSuccess: false, error: e.toString()));
    }
  }

  /// Validates the given address by fetching the corresponding coordinates.
  Future<Address?> addressValidator({
    required String shopName,
    required String stateName,
    required String country,
    required String city,
    required String locality,
    required String pinCode,
    required String street,
    required String buildingNumber,
  }) async {
    final userGivenAddress =
        '$buildingNumber/$street/$locality/$city/$stateName/$pinCode/${state.address?.country}';

    final finalPlace = await _getLatLngFromAddress(userGivenAddress);
    if (finalPlace != null) {
      return Address(
        country: country,
        stateName: stateName,
        city: city,
        locality: locality,
        pinCode: pinCode,
        street: street,
        buildingNumber: buildingNumber,
      );
    }
    return null;
  }

  /// Retrieves the current geographical position of the user.
  Future<Position?> _getCurrentPosition() async {
    if (!await _handleLocationPermission()) return null;
    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      emitSafeState(state.copyWith(
          error: e.toString(), isLoading: false, isSuccess: false));
      return null;
    }
  }

  /// Converts geographical coordinates into a placemark (human-readable address).
  Future<Placemark?> _getAddressFromLatLng(Position position) async {
    try {
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      return placemarks.isNotEmpty ? placemarks[0] : null;
    } catch (e) {
      emitSafeState(state.copyWith(
          error: e.toString(), isLoading: false, isSuccess: false));
      return null;
    }
  }

  /// Retrieves the latitude and longitude from a user-provided address string.
  Future<String?> _getLatLngFromAddress(String address) async {
    try {
      final locations = await locationFromAddress(address);
      return locations.isNotEmpty ? address : null;
    } catch (e) {
      emitSafeState(state.copyWith(
          error: e.toString(), isLoading: false, isSuccess: false));
      return null;
    }
  }

  /// Handles permission requests for accessing location services.
  Future<bool> _handleLocationPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      emitSafeState(state.copyWith(
          error:
              'Location services are disabled. Please enable the services.'));
      return false;
    }
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emitSafeState(state.copyWith(error: 'Location permissions are denied'));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      emitSafeState(state.copyWith(
          error:
              'Location permissions are permanently denied, we cannot request permissions.'));
      return false;
    }
    emitSafeState(state.copyWith(hasPermission: true));
    return true;
  }
}

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    required bool isLoading,
    required bool isSuccess,
    String? error,
    required bool hasPermission,
    Address? address,
    double? latitude,
    double? longitude,
  }) = _AddressState;

  factory AddressState.initial() => const AddressState(
        hasPermission: false,
        isLoading: false,
        isSuccess: false,
      );
}
