extension FormValidator on String {
  bool isValidEmail() {
    if (isEmpty) {
      return false;
    } else {
      return RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(this);
    }
  }

  bool isValidPassword() {
    if (isEmpty) {
      return false;
    } else if (length < 8) {
      return false;
    } else {
      return true;
    }
  }

  bool isEmptyForm() {
    if (isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
