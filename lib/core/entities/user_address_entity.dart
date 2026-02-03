class UserAddressEntity {
  final String? id;
  final String? userId;
  final String? phoneNumber;
  final String? streetAddress;
  final String? city;
  final String? state;
  final String? building;
  final String? floorNumber;
  final double? latitude;
  final double? longitude;
  final bool? isDefault;

  UserAddressEntity({
    this.id,
    this.userId,
    this.phoneNumber,
    this.streetAddress,
    this.city,
    this.state,
    this.building,
    this.floorNumber,
    this.latitude,
    this.longitude,
    this.isDefault,
  });
}
