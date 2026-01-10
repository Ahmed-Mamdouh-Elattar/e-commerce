import 'package:hooks_riverpod/hooks_riverpod.dart';

final emailProvider = Provider.autoDispose<String>((ref) {
  return "";
});
