import 'dart:ui';

String colorToHex(Color color) {
  return color.toARGB32().toRadixString(16).substring(2).toUpperCase();
}
