// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:e_commerce/feature/address/domain/entities/user_address_entity.dart';

class UserAddressModel {
  final String? id;
  final String? userId;
  final String? phoneNumber;
  final String? streetAddress;
  final String? city;
  final String? state;
  final String? building;
  final String? floorNo;
  final double? latitude;
  final double? longitude;
  final bool? isDefault;

  UserAddressModel({
    this.id,
    this.phoneNumber,
    this.streetAddress,
    this.city,
    this.state,
    this.building,
    this.floorNo,
    this.latitude,
    this.longitude,
    this.isDefault,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'phone_number': phoneNumber,
      'street_address': streetAddress,
      'city': city,
      'state': state,
      'building': building,
      'floor_no': floorNo,
      'latitude': latitude,
      'longitude': longitude,
      'is_default': true,
    };
  }

  factory UserAddressModel.fromMap(Map<String, dynamic> map) {
    return UserAddressModel(
      id: map['id'] != null ? map['id'] as String : null,
      userId: map['user_id'] != null ? map['user_id'] as String : null,
      phoneNumber: map['phone_number'] != null
          ? map['phone_number'] as String
          : null,
      streetAddress: map['street_address'] != null
          ? map['street_address'] as String
          : null,
      city: map['city'] != null ? map['city'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      building: map['building'] != null ? map['building'] as String : null,
      floorNo: map['floor_no'] != null ? map['floor_no'] as String : null,
      latitude: map['latitude'] != null ? map['latitude'] as double : null,
      longitude: map['longitude'] != null ? map['longitude'] as double : null,
      isDefault: map['is_default'] != null ? map['is_default'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAddressModel.fromJson(String source) =>
      UserAddressModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory UserAddressModel.fromEntity(UserAddressEntity entity) {
    return UserAddressModel(
      id: entity.id,
      userId: entity.userId,
      phoneNumber: entity.phoneNumber,
      streetAddress: entity.streetAddress,
      city: entity.city,
      state: entity.state,
      building: entity.building,
      floorNo: entity.floorNumber,
      latitude: entity.latitude,
      longitude: entity.longitude,
      isDefault: entity.isDefault,
    );
  }

  UserAddressModel copyWith({
    String? id,
    String? userId,
    String? phoneNumber,
    String? streetAddress,
    String? city,
    String? state,
    String? building,
    String? floorNo,
    double? latitude,
    double? longitude,
    bool? isDefault,
  }) {
    return UserAddressModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      streetAddress: streetAddress ?? this.streetAddress,
      city: city ?? this.city,
      state: state ?? this.state,
      building: building ?? this.building,
      floorNo: floorNo ?? this.floorNo,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  UserAddressEntity toUserAddressEntity() {
    return UserAddressEntity(
      id: id,
      userId: userId,
      phoneNumber: phoneNumber,
      streetAddress: streetAddress,
      city: city,
      state: state,
      building: building,
      floorNumber: floorNo,
      latitude: latitude,
      longitude: longitude,
      isDefault: isDefault,
    );
  }
}
