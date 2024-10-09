import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../models/address_model.dart';

part 'address_provider.g.dart';
part 'address_provider.freezed.dart';

@riverpod
class AddressManager extends _$AddressManager {
  @override
  FutureOr<AddressState> build() => const AddressState();

  /// Gets the current place using geolocation.
  Future<AddressState?> getPlace() async {
    try {
      _setLoading();
      final position = await _getCurrentPosition();
      if (position == null) return null;

      final place = await _getAddressFromLatLng(position);
      var addressState = AddressState(
          placemark: place,
          geoLocation: '${position.latitude},${position.longitude}',
          address:
              '${place?.name ?? 'Unknown'}/${place?.street ?? 'Unknown'}/${place?.subLocality ?? 'Unknown'}/${place?.locality ?? 'Unknown'}/${place?.administrativeArea ?? 'Unknown'}/${place?.country ?? 'Unknown'}/${place?.postalCode ?? 'Unknown'}');

      // print('Address State: $addressState'); // Debug line
      _setData(addressState);
      return addressState;
    } catch (e) {
      _setError(e);
      return null;
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
        '$buildingNumber/$street/$locality/$city/$stateName/$pinCode/${state.asData?.value.placemark?.country}';

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
      _setError(e);
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
      _setError(e);
      return null;
    }
  }

  /// Retrieves the latitude and longitude from a user-provided address string.
  Future<String?> _getLatLngFromAddress(String address) async {
    try {
      final locations = await locationFromAddress(address);
      return locations.isNotEmpty ? address : null;
    } catch (e) {
      _setError(e);
      return null;
    }
  }

  /// Handles permission requests for accessing location services.
  Future<bool> _handleLocationPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return _handleError(
          'Location services are disabled. Please enable the services.');
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return _handleError('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return _handleError(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    return true;
  }

  /// Sets the state to loading.
  void _setLoading() {
    state = const AsyncValue.loading();
  }

  /// Sets the state with data.
  void _setData(AddressState data) {
    state = AsyncValue.data(data);
  }

  /// Handles errors and sets the state to error.
  bool _handleError(String message) {
    _setError(message);
    return false;
  }

  /// Centralized error handler to set error state.
  void _setError(dynamic error) {
    state = AsyncValue.error(
      error.toString(),
      StackTrace.current,
    );
  }
}

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    String? address,
    String? geoLocation,
    Placemark? placemark,
  }) = _AddressState;
}
