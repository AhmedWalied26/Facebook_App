class AppValidation {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password Required';
    }
    final hasUppercase = RegExp(r'[A-Z]');
    final hasLowercase = RegExp(r'[a-z]');
    final hasDigits = RegExp(r'[0-9]');
    final hasSpecialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (!hasUppercase.hasMatch(value)) {
      return 'Password Should Contain Uppercase Letters';
    }
    if (!hasLowercase.hasMatch(value)) {
      return 'Password Should Contain Lowercase Letters';
    }
    if (!hasDigits.hasMatch(value)) {
      return 'Password Should Contain Numbers';
    }
    if (!hasSpecialCharacters.hasMatch(value)) {
      return 'Password Should Contain Special Character';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email Required';
    }
    if (!value.contains('@')) {
      return 'Invalid Email';
    }
    return null;
  }
}
