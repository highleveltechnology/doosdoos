/// handle location exception
class LocationException implements Exception {
  final String message;
  LocationException(this.message);
  @override
  String toString() => message;
}

class LocationServiceException extends LocationException {
  LocationServiceException(super.message);
}

class LocationPermissionException extends LocationException {
  LocationPermissionException(super.message);
}
