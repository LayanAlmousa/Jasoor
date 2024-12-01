import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'toast_widget.dart' show ToastWidget;
import 'package:flutter/material.dart';

class ToastModel extends FlutterFlowModel<ToastWidget> {
  ///  Local state fields for this component.

  int secondsVisibleCent = 0;

  double progressVisible = 1.0;

  int? secondsRemaining = 5;

  ///  State fields for stateful widgets in this component.

  InstantTimer? visibiltyTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    visibiltyTimer?.cancel();
  }
}
