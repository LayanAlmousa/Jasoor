import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_page_widget.dart' show LogInPageWidget;
import 'package:flutter/material.dart';

class LogInPageModel extends FlutterFlowModel<LogInPageWidget> {
  ///  Local state fields for this page.

  bool emailSet = true;

  bool passwordSet = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for LogInEmail widget.
  FocusNode? logInEmailFocusNode;
  TextEditingController? logInEmailTextController;
  String? Function(BuildContext, String?)? logInEmailTextControllerValidator;
  // Stores action output result for [Custom Action - emailValidate] action in LogInEmail widget.
  String? emailValidMsg;
  // State field(s) for LogInPassword widget.
  FocusNode? logInPasswordFocusNode;
  TextEditingController? logInPasswordTextController;
  late bool logInPasswordVisibility;
  String? Function(BuildContext, String?)? logInPasswordTextControllerValidator;
  // Stores action output result for [Custom Action - logInAuthCheck] action in LogInButton widget.
  String? logInErrorMsg;

  @override
  void initState(BuildContext context) {
    logInPasswordVisibility = false;
  }

  @override
  void dispose() {
    logInEmailFocusNode?.dispose();
    logInEmailTextController?.dispose();

    logInPasswordFocusNode?.dispose();
    logInPasswordTextController?.dispose();
  }
}
