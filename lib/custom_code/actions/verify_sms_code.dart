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

Future<bool> verifySmsCode(String verificationId, String smsCode) async {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    try {
      // Create a PhoneAuthCredential with the SMS code
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      // Enroll the multi-factor authentication
      await user.multiFactor.enroll(
        PhoneMultiFactorGenerator.getAssertion(credential),
      );
      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }
  return false;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
