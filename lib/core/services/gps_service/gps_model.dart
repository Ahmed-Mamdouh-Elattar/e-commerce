import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GpsModel {
  Position position;
  Placemark place;

  GpsModel({required this.position, required this.place});
}
