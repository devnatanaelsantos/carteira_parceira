import 'package:flutter/material.dart';

class CpController {
  ValueNotifier<bool> obscureText = ValueNotifier(true);
  IconData iconPassword = Icons.visibility;

  hidePassword() {
    if (obscureText.value == true) {
      obscureText.value = false;
      iconPassword = Icons.visibility_off;
    } else {
      obscureText.value = true;
      iconPassword = Icons.visibility;
    }
  }
}
