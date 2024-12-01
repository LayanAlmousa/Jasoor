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
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> signUpAuthCheck(
  String emailAddress,
  String password,
  String name,
) async {
  String returnAuth = "";
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );

    // Save user data to Firestore
    User? user = userCredential.user;
    if (user != null) {
      await FirebaseFirestore.instance
          .collection('UserInfo')
          .doc(user.uid)
          .set({
        'email': emailAddress,
        'created_time': FieldValue.serverTimestamp(),
        'display_name': name,
        'uid': user.uid,
        // Add additional user fields here
      });
    }
    // Return an empty string if the registration is successful
    returnAuth = '';
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      returnAuth = 'The account already exists for that email.';
    } else {
      returnAuth = e.message ??
          'An error occurred. Please try again.'; // Improved error message
    }
  } catch (e) {
    returnAuth =
        'An unexpected error occurred. Please try again.'; // Catch-all for any other exceptions
  }

  return returnAuth; // Return the result
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
