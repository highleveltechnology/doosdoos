import 'dart:async';

import 'package:geocoding/geocoding.dart' as geo;
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:doos/src/core/error/exceptions.dart';
@injectable
class LocationService {
  LocationData? locationData;

  /// Determines if location services are enabled on the device
  Future<bool> _checkLocationServicesEnabled() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
    }
    return true;
  }

  /// Checks and requests location permissions if needed
  Future<LocationPermission> _checkAndRequestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw LocationPermissionException('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw LocationPermissionException(
          'Location permissions are permanently denied, we cannot request permissions');
    }

    return permission;
  }

  /// Gets the current location (latitude and longitude)
  Future<LocationData> getCurrentLocation() async {
    try {
      // First check if location services are enabled
       print('🛰️ Checking location service enabled');
      await _checkLocationServicesEnabled();
       print('📍 Checking permissions');
      // Then check and request permissions if needed
      await _checkAndRequestPermission();
      print('📡 Getting current position');
      // Get the current position
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 100,
        ),
      );
      print('✅ Got position: ${position.latitude}, ${position.longitude}');
      return locationData = LocationData(
        latitude: position.latitude,
        longitude: position.longitude,
        accuracy: position.accuracy,
        timestamp: position.timestamp,
      );
    } catch (e) {
      if (e is LocationServiceException || e is LocationPermissionException) {
         print('❌ Location error: $e');
        rethrow;
      }
      throw LocationException('Failed to get location: ${e.toString()}');
    }
  }

  /// Get location updates as a stream
  Stream<LocationData> getLocationStream({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 0,
  }) {
    return Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: accuracy,
        distanceFilter: distanceFilter,
      ),
    ).map(
      (Position position) => LocationData(
        latitude: position.latitude,
        longitude: position.longitude,
        accuracy: position.accuracy,
        timestamp: position.timestamp,
      ),
    );
  }
  Future<String> getAddressFromLatLng(double latitude, double longitude) async {
  try {
    List<geo.Placemark> placemarks =
        await geo.placemarkFromCoordinates(latitude, longitude);

    if (placemarks.isNotEmpty) {
      final place = placemarks.first;
      return '${place.country}, ${place.administrativeArea}'; // e.g., UAE, Sharjah
    } else {
      throw Exception('No address found for the given coordinates');
    }
  } catch (e) {
    throw Exception('Failed to get address: $e');
  }
}
}

/// Data class to hold location information
class LocationData {
  final double latitude;
  final double longitude;
  final double accuracy;
  final DateTime? timestamp;

  LocationData({
    required this.latitude,
    required this.longitude,
    required this.accuracy,
    this.timestamp,
  });

  @override
  String toString() {
    return 'LocationData(latitude: $latitude, longitude: $longitude, accuracy: ${accuracy.toStringAsFixed(2)}m)';
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'accuracy': accuracy,
      'timestamp': timestamp?.toIso8601String(),
    };
  }
}