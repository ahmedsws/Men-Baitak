class Validator {
  static bool validateFullName(String name) => name.split(' ').length >= 2;
  static bool validateEmail(String email) =>
      RegExp(r'[\w\d]{4,}@[\w\d]{2,}\.[\w\d]+').hasMatch(email);
  static bool validatePassword(String password) => password.length >= 8;
}
