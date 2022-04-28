extension StringExtensions on String {
  isValidEmail() {
    RegExp regEmail = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (isEmpty) {
      return 'Please Enter an Email';
    } else {
      if (!regEmail.hasMatch(this)) {
        return 'Please Enter a Valid Email';
      } else {
        return null;
      }
    }
  }

  isValidPassword() {
    RegExp regPass =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (isEmpty) {
      return 'Please Enter a Password';
    } else {
      if (!regPass.hasMatch(this)) {
        return 'Please Enter a Strong Password';
      } else {
        return null;
      }
    }
  }
}