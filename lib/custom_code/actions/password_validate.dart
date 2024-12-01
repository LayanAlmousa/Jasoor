// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String? passwordValidate(String? password) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  String errorMessage = '';
  if (password != null) {
    // Password length greater than 12
    if (password.length < 12) {
      errorMessage += 'Password must be at least 12 characters.\n';
    }
    // Contains at least one uppercase letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      errorMessage += '• Must contain one uppercase letter (A-Z).\n';
    }
    // Contains at least one lowercase letter
    if (!password.contains(RegExp(r'[a-z]'))) {
      errorMessage += '• Must contain one lowercase letter (a-z).\n';
    }
    // Contains at least one digit
    if (!password.contains(RegExp(r'[0-9]'))) {
      errorMessage += '• Must contain a digit (0-9).\n';
    }
    // Contains at least one special character
    if (!password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      errorMessage += '• Must contain a special character (e.g. !@#).\n';
    }
  }
  // If there are no error messages, the password is valid
  return errorMessage;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
