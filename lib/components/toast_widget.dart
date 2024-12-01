import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'toast_model.dart';
export 'toast_model.dart';

class ToastWidget extends StatefulWidget {
  const ToastWidget({
    super.key,
    String? title,
    String? description,
    int? secondsVisible,
    required this.variant,
  })  : title = title ?? 'Title',
        description = description ?? 'description',
        secondsVisible = secondsVisible ?? 5;

  final String title;
  final String description;
  final int secondsVisible;
  final ToastVariants? variant;

  @override
  State<ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<ToastWidget>
    with TickerProviderStateMixin {
  late ToastModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToastModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.secondsVisibleCent = widget.secondsVisible * 100;
      _model.secondsRemaining = widget.secondsVisible;
      safeSetState(() {});
      _model.visibiltyTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 10),
        callback: (timer) async {
          if (_model.visibiltyTimer.tick <= _model.secondsVisibleCent) {
            _model.progressVisible =
                ((_model.secondsVisibleCent - _model.visibiltyTimer.tick) /
                        _model.secondsVisibleCent)
                    .clamp(0, 1);
            _model.secondsRemaining =
                ((_model.secondsVisibleCent - _model.visibiltyTimer.tick) / 100)
                    .floor();
            safeSetState(() {});
          } else {
            _model.visibiltyTimer?.cancel();
            Navigator.pop(context);
          }
        },
        startImmediately: true,
      );
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 30.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 250.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (widget.variant == ToastVariants.Success) {
                  return const Color(0xFF4CD95D);
                } else if (widget.variant == ToastVariants.Error) {
                  return const Color(0xFFFF3130);
                } else if (widget.variant == ToastVariants.Alert) {
                  return const Color(0xFFFFCC00);
                } else {
                  return FlutterFlowTheme.of(context).primary;
                }
              }(),
              FlutterFlowTheme.of(context).primary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'description',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.description,
                          'description',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                    _model.visibiltyTimer?.cancel();
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ].divide(const SizedBox(width: 4.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
