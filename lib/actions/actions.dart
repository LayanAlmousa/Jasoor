import '/backend/schema/enums/enums.dart';
import '/components/toast_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future showToast(
  BuildContext context, {
  required String? title,
  required String? description,
  int? secondsVisible,
  ToastVariants? variant,
}) async {
  showDialog(
    barrierColor: Colors.transparent,
    context: context,
    builder: (dialogContext) {
      return Dialog(
        elevation: 0,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        alignment:
            const AlignmentDirectional(0.0, 1.0).resolve(Directionality.of(context)),
        child: WebViewAware(
          child: ToastWidget(
            title: title!,
            description: description!,
            secondsVisible: secondsVisible,
            variant: variant!,
          ),
        ),
      );
    },
  );
}

Future showToastSuccess(
  BuildContext context, {
  String? title,
  String? description,
  int? secondsVisible,
}) async {
  unawaited(
    () async {
      await action_blocks.showToast(
        context,
        title: title,
        description: description,
        secondsVisible: secondsVisible,
        variant: ToastVariants.Success,
      );
    }(),
  );
}
