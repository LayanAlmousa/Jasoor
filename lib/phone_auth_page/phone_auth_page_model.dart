import '/flutter_flow/flutter_flow_util.dart';
import 'phone_auth_page_widget.dart' show PhoneAuthPageWidget;
import 'package:flutter/material.dart';

class PhoneAuthPageModel extends FlutterFlowModel<PhoneAuthPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CountryName widget.
  final countryNameKey = GlobalKey();
  FocusNode? countryNameFocusNode;
  TextEditingController? countryNameTextController;
  String? countryNameSelectedOption;
  String? Function(BuildContext, String?)? countryNameTextControllerValidator;
  // State field(s) for SignUpPhoneNumber widget.
  FocusNode? signUpPhoneNumberFocusNode;
  TextEditingController? signUpPhoneNumberTextController;
  String? Function(BuildContext, String?)?
      signUpPhoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    countryNameFocusNode?.dispose();

    signUpPhoneNumberFocusNode?.dispose();
    signUpPhoneNumberTextController?.dispose();
  }
}
