String? checkIsValidEmail(String value) {
  RegExp regExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  if (!regExp.hasMatch(value)) {
    return 'Please enter a valid email address';
  }

  return null;
}
