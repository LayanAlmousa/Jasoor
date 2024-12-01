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

Future<DocumentReference?> getDocumentByEmail(String email) async {
  try {
    // Replace 'users' with your Firestore collection name
    final query = FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .limit(1);

    // Await the query result
    final querySnapshot = await query.get();

    // Check if a document exists
    if (querySnapshot.docs.isNotEmpty) {
      return querySnapshot.docs.first.reference;
    } else {
      return null; // No document found
    }
  } catch (e) {
    // Handle any errors
    throw Exception('Error retrieving document reference: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
