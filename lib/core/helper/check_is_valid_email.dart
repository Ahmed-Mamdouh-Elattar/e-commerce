String? checkIsValidEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email address';
  }
  RegExp regExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  if (!regExp.hasMatch(value)) {
    return 'Please enter a valid email address';
  }

  return null;
}
