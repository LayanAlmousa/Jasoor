import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_pass_page_widget.dart' show ForgotPassPageWidget;
import 'package:flutter/material.dart';

class ForgotPassPageModel extends FlutterFlowModel<ForgotPassPageWidget> {
  ///  Local state fields for this page.

  bool emailSet = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ForgotPassEmail widget.
  FocusNode? forgotPassEmailFocusNode;
  TextEditingController? forgotPassEmailTextController;
  String? Function(BuildContext, String?)?
      forgotPassEmailTextControllerValidator;
  // Stores action output result for [Custom Action - emailValidate] action in ForgotPassEmail widget.
  String? emailValidMsg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    forgotPassEmailFocusNode?.dispose();
    forgotPassEmailTextController?.dispose();
  }
}
