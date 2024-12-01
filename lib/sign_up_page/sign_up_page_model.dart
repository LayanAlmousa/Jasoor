import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  Local state fields for this page.

  bool passwordsMatch = true;

  bool nameSet = true;

  bool emailSet = true;

  bool passwordSet = true;

  bool confirmPassSet = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for SignUpEmail widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  // Stores action output result for [Custom Action - emailValidate] action in SignUpEmail widget.
  String? emailValidMsg;
  // State field(s) for SignUpPassword widget.
  FocusNode? signUpPasswordFocusNode;
  TextEditingController? signUpPasswordTextController;
  late bool signUpPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordTextControllerValidator;
  // Stores action output result for [Custom Action - passwordValidate] action in SignUpPassword widget.
  String? passwordErrorMsg;
  // State field(s) for SignUpPasswordConfirm widget.
  FocusNode? signUpPasswordConfirmFocusNode;
  TextEditingController? signUpPasswordConfirmTextController;
  late bool signUpPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordConfirmTextControllerValidator;
  // Stores action output result for [Custom Action - signUpAuthCheck] action in SignUpButton widget.
  String? signUpErrorMsg;

  @override
  void initState(BuildContext context) {
    signUpPasswordVisibility = false;
    signUpPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    signUpPasswordFocusNode?.dispose();
    signUpPasswordTextController?.dispose();

    signUpPasswordConfirmFocusNode?.dispose();
    signUpPasswordConfirmTextController?.dispose();
  }
}
