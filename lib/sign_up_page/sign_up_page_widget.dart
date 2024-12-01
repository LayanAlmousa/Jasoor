import '/auth/firebase_auth/auth_util.dart';
import '/components/acc_creation_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'sign_up_page_model.dart';
export 'sign_up_page_model.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({super.key});

  @override
  State<SignUpPageWidget> createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  late SignUpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPageModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();
    _model.nameFocusNode!.addListener(
      () async {
        if (_model.nameTextController.text == '') {
          _model.nameSet = false;
          safeSetState(() {});
        } else {
          _model.nameSet = true;
          safeSetState(() {});
        }
      },
    );
    _model.signUpEmailTextController ??= TextEditingController();
    _model.signUpEmailFocusNode ??= FocusNode();
    _model.signUpEmailFocusNode!.addListener(
      () async {
        if (_model.signUpEmailTextController.text == '') {
          _model.emailSet = false;
          safeSetState(() {});
        } else {
          _model.emailSet = true;
          safeSetState(() {});
        }
      },
    );
    _model.signUpPasswordTextController ??= TextEditingController();
    _model.signUpPasswordFocusNode ??= FocusNode();
    _model.signUpPasswordFocusNode!.addListener(
      () async {
        if (_model.signUpPasswordTextController.text == '') {
          _model.passwordSet = false;
          safeSetState(() {});
        } else {
          _model.passwordSet = true;
          safeSetState(() {});
        }
      },
    );
    _model.signUpPasswordConfirmTextController ??= TextEditingController();
    _model.signUpPasswordConfirmFocusNode ??= FocusNode();
    _model.signUpPasswordConfirmFocusNode!.addListener(
      () async {
        if (_model.signUpPasswordConfirmTextController.text == '') {
          _model.confirmPassSet = false;
          safeSetState(() {});
        } else {
          _model.confirmPassSet = true;
          safeSetState(() {});
        }
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/BackgroundImage.png',
                  ).image,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Android_Compact_-_1_(7).png',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sign Up',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 120.0,
                                    child: Divider(
                                      thickness: 4.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.nameTextController,
                                          focusNode: _model.nameFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.nameTextController',
                                            const Duration(milliseconds: 400),
                                            () async {
                                              if (!_model.nameSet) {
                                                if (_model.nameTextController
                                                            .text !=
                                                        '') {
                                                  _model.nameSet = true;
                                                  safeSetState(() {});
                                                }
                                              } else {
                                                if (_model.nameTextController
                                                            .text ==
                                                        '') {
                                                  _model.nameSet = false;
                                                  safeSetState(() {});
                                                }
                                              }
                                            },
                                          ),
                                          autofocus: true,
                                          autofillHints: const [AutofillHints.name],
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Name\\Nickname',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: _model.nameSet
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .alternate
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: _model.nameSet
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsets.all(24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType: TextInputType.name,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .nameTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      if (_model.nameSet == false)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'This field is required.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller:
                                              _model.signUpEmailTextController,
                                          focusNode:
                                              _model.signUpEmailFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.signUpEmailTextController',
                                            const Duration(milliseconds: 400),
                                            () async {
                                              await Future.wait([
                                                Future(() async {
                                                  if (!_model.emailSet) {
                                                    if (_model.signUpEmailTextController
                                                                .text !=
                                                            '') {
                                                      _model.emailSet = true;
                                                      safeSetState(() {});
                                                    }
                                                  } else {
                                                    if (_model.signUpEmailTextController
                                                                .text ==
                                                            '') {
                                                      _model.emailSet = false;
                                                      safeSetState(() {});
                                                    }
                                                  }
                                                }),
                                                Future(() async {
                                                  _model.emailValidMsg =
                                                      actions
                                                          .emailValidate(
                                                    _model
                                                        .signUpEmailTextController
                                                        .text,
                                                  );
                                                }),
                                              ]);

                                              safeSetState(() {});
                                            },
                                          ),
                                          autofocus: true,
                                          autofillHints: const [AutofillHints.email],
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: !_model.emailSet ||
                                                        (_model.emailValidMsg !=
                                                                null &&
                                                            _model.emailValidMsg !=
                                                                '')
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: !_model.emailSet ||
                                                        (_model.emailValidMsg !=
                                                                null &&
                                                            _model.emailValidMsg !=
                                                                '')
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsets.all(24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .signUpEmailTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      if (_model.emailSet == false)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'This field is required.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      if ((_model.emailValidMsg != null &&
                                              _model.emailValidMsg != '') &&
                                          _model.emailSet)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.emailValidMsg,
                                              'none',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model
                                              .signUpPasswordTextController,
                                          focusNode:
                                              _model.signUpPasswordFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.signUpPasswordTextController',
                                            const Duration(milliseconds: 400),
                                            () async {
                                              await Future.wait([
                                                Future(() async {
                                                  if (!_model.passwordSet) {
                                                    if (_model.signUpPasswordTextController
                                                                .text !=
                                                            '') {
                                                      _model.passwordSet = true;
                                                      safeSetState(() {});
                                                    }
                                                  } else {
                                                    if (_model.signUpPasswordTextController
                                                                .text ==
                                                            '') {
                                                      _model.passwordSet =
                                                          false;
                                                      safeSetState(() {});
                                                    }
                                                  }
                                                }),
                                                Future(() async {
                                                  unawaited(
                                                    () async {
                                                      _model.passwordErrorMsg =
                                                          actions
                                                              .passwordValidate(
                                                        _model
                                                            .signUpPasswordTextController
                                                            .text,
                                                      );
                                                    }(),
                                                  );
                                                }),
                                              ]);

                                              safeSetState(() {});
                                            },
                                          ),
                                          autofocus: false,
                                          autofillHints: const [
                                            AutofillHints.password
                                          ],
                                          obscureText:
                                              !_model.signUpPasswordVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: !_model.passwordSet ||
                                                        !_model
                                                            .passwordsMatch ||
                                                        (_model.passwordErrorMsg !=
                                                                null &&
                                                            _model.passwordErrorMsg !=
                                                                '')
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: !_model.passwordSet ||
                                                        !_model
                                                            .passwordsMatch ||
                                                        (_model.passwordErrorMsg !=
                                                                null &&
                                                            _model.passwordErrorMsg !=
                                                                '')
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsets.all(24.0),
                                            suffixIcon: InkWell(
                                              onTap: () => safeSetState(
                                                () => _model
                                                        .signUpPasswordVisibility =
                                                    !_model
                                                        .signUpPasswordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.signUpPasswordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .signUpPasswordTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      if (_model.passwordSet == false)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'This field is required.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      if ((_model.passwordErrorMsg != null &&
                                              _model.passwordErrorMsg != '') &&
                                          _model.passwordSet)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.passwordErrorMsg,
                                              'none',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model
                                              .signUpPasswordConfirmTextController,
                                          focusNode: _model
                                              .signUpPasswordConfirmFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.signUpPasswordConfirmTextController',
                                            const Duration(milliseconds: 400),
                                            () async {
                                              await Future.wait([
                                                Future(() async {
                                                  if (!_model.confirmPassSet) {
                                                    if (_model.signUpPasswordConfirmTextController
                                                                .text !=
                                                            '') {
                                                      _model.confirmPassSet =
                                                          true;
                                                      safeSetState(() {});
                                                    }
                                                  } else {
                                                    if (_model.signUpPasswordConfirmTextController
                                                                .text ==
                                                            '') {
                                                      _model.confirmPassSet =
                                                          false;
                                                      safeSetState(() {});
                                                    }
                                                  }
                                                }),
                                                Future(() async {
                                                  if (_model
                                                          .signUpPasswordTextController
                                                          .text ==
                                                      _model
                                                          .signUpPasswordConfirmTextController
                                                          .text) {
                                                    _model.passwordsMatch =
                                                        true;
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.passwordsMatch =
                                                        false;
                                                    safeSetState(() {});
                                                  }
                                                }),
                                              ]);
                                            },
                                          ),
                                          autofocus: false,
                                          autofillHints: const [
                                            AutofillHints.password
                                          ],
                                          obscureText: !_model
                                              .signUpPasswordConfirmVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Confirm Password',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: _model.passwordsMatch &&
                                                        _model.confirmPassSet
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .alternate
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: _model.passwordsMatch &&
                                                        _model.confirmPassSet
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsets.all(24.0),
                                            suffixIcon: InkWell(
                                              onTap: () => safeSetState(
                                                () => _model
                                                        .signUpPasswordConfirmVisibility =
                                                    !_model
                                                        .signUpPasswordConfirmVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.signUpPasswordConfirmVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          minLines: 1,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .signUpPasswordConfirmTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      if (_model.confirmPassSet == false)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'This field is required',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      if (_model.passwordsMatch == false)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Passwords do not match.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      if (_model.signUpErrorMsg != null &&
                                          _model.signUpErrorMsg != '')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.signUpErrorMsg,
                                              'none',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                    ].divide(const SizedBox(height: 9.0)),
                                  ),
                                  Builder(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        await Future.wait([
                                          Future(() async {
                                            if (_model.nameTextController
                                                        .text !=
                                                    '') {
                                              _model.nameSet = true;
                                            } else {
                                              _model.nameSet = false;
                                            }
                                          }),
                                          Future(() async {
                                            if (_model.signUpEmailTextController
                                                        .text !=
                                                    '') {
                                              _model.emailSet = true;
                                            } else {
                                              _model.emailSet = false;
                                            }
                                          }),
                                          Future(() async {
                                            if (_model.signUpPasswordTextController
                                                        .text !=
                                                    '') {
                                              _model.passwordSet = true;
                                            } else {
                                              _model.passwordSet = false;
                                            }
                                          }),
                                          Future(() async {
                                            if (_model
                                                    .signUpPasswordTextController
                                                    .text ==
                                                _model
                                                    .signUpPasswordConfirmTextController
                                                    .text) {
                                              _model.passwordsMatch = true;
                                              safeSetState(() {});
                                            } else {
                                              _model.passwordsMatch = false;
                                              safeSetState(() {});
                                            }
                                          }),
                                          Future(() async {
                                            if (_model.signUpPasswordConfirmTextController
                                                        .text !=
                                                    '') {
                                              _model.confirmPassSet = true;
                                              safeSetState(() {});
                                            } else {
                                              _model.confirmPassSet = false;
                                              safeSetState(() {});
                                            }
                                          }),
                                        ]);
                                        if (_model.emailSet &&
                                            _model.nameSet &&
                                            _model.passwordSet &&
                                            _model.confirmPassSet &&
                                            (_model.emailValidMsg == null ||
                                                _model.emailValidMsg == '') &&
                                            (_model.passwordErrorMsg == null ||
                                                _model.passwordErrorMsg ==
                                                    '') &&
                                            _model.passwordsMatch) {
                                          _model.signUpErrorMsg =
                                              await actions.signUpAuthCheck(
                                            _model
                                                .signUpEmailTextController.text,
                                            _model.signUpPasswordTextController
                                                .text,
                                            _model.nameTextController.text,
                                          );
                                          if (!(_model.signUpErrorMsg != null &&
                                              _model.signUpErrorMsg != '')) {
                                            await authManager
                                                .sendEmailVerification();
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(
                                                                  dialogContext)
                                                              .unfocus(),
                                                      child:
                                                          AccCreationMessageWidget(
                                                        email: _model
                                                            .signUpEmailTextController
                                                            .text,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Create account',
                                      options: FFButtonOptions(
                                        width: 230.0,
                                        height: 42.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        hoverElevation: 12.0,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('LogInPage');
                                        },
                                        child: Text(
                                          'Already have an account?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                        text: 'Back',
                                        options: FFButtonOptions(
                                          width: 180.0,
                                          height: 42.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 3.0,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          hoverElevation: 12.0,
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 9.0)),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ].divide(const SizedBox(height: 9.0)),
                          ),
                        ),
                      ),
                    ),
                  ].addToStart(const SizedBox(height: 58.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
