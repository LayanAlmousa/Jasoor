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

import 'package:firebase_auth/firebase_auth.dart';

Future<String> invalidEmail(
  String emailAddress,
  String password,
) async {
  String returnAuth = '';
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);
  } on FirebaseAuthException catch (e) {
    // POSSIBLE ERRORS
    //
    // invalid-email
    // wrong-password
    // user-not-found
    //
    switch (e.code) {
      case 'invalid-email':
        returnAuth =
            'Please enter a valid email address (e.g., name@example.com).\n';
        break;
    }
  }
  return returnAuth;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
