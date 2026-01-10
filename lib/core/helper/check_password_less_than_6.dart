String? checkIsPasswordLessThan6(String value) {
  if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null;
}
