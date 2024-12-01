import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/verify_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'log_in_page_model.dart';
export 'log_in_page_model.dart';

class LogInPageWidget extends StatefulWidget {
  const LogInPageWidget({super.key});

  @override
  State<LogInPageWidget> createState() => _LogInPageWidgetState();
}

class _LogInPageWidgetState extends State<LogInPageWidget> {
  late LogInPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogInPageModel());

    _model.logInEmailTextController ??= TextEditingController();
    _model.logInEmailFocusNode ??= FocusNode();
    _model.logInEmailFocusNode!.addListener(
      () async {
        if (_model.logInEmailTextController.text == '') {
          _model.emailSet = false;
          safeSetState(() {});
        } else {
          _model.emailSet = true;
          safeSetState(() {});
        }
      },
    );
    _model.logInPasswordTextController ??= TextEditingController();
    _model.logInPasswordFocusNode ??= FocusNode();
    _model.logInPasswordFocusNode!.addListener(
      () async {
        if (_model.logInPasswordTextController.text == '') {
          _model.passwordSet = false;
          safeSetState(() {});
        } else {
          _model.passwordSet = true;
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
    context.watch<FFAppState>();

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
                                    'Log In',
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller:
                                                _model.logInEmailTextController,
                                            focusNode:
                                                _model.logInEmailFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.logInEmailTextController',
                                              const Duration(milliseconds: 400),
                                              () async {
                                                await Future.wait([
                                                  Future(() async {
                                                    if (!_model.emailSet) {
                                                      if (_model.logInEmailTextController
                                                                  .text !=
                                                              '') {
                                                        _model.emailSet = true;
                                                        safeSetState(() {});
                                                      }
                                                    } else {
                                                      if (_model.logInEmailTextController
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
                                                          .logInEmailTextController
                                                          .text,
                                                    );
                                                  }),
                                                ]);

                                                safeSetState(() {});
                                              },
                                            ),
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                .logInEmailTextControllerValidator
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                                .logInPasswordTextController,
                                            focusNode:
                                                _model.logInPasswordFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.logInPasswordTextController',
                                              const Duration(milliseconds: 400),
                                              () async {
                                                if (!_model.passwordSet) {
                                                  if (_model.logInPasswordTextController
                                                              .text !=
                                                          '') {
                                                    _model.passwordSet = true;
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  if (_model.logInPasswordTextController
                                                              .text ==
                                                          '') {
                                                    _model.passwordSet = false;
                                                    safeSetState(() {});
                                                  }
                                                }
                                              },
                                            ),
                                            autofocus: false,
                                            autofillHints: const [
                                              AutofillHints.password
                                            ],
                                            obscureText:
                                                !_model.logInPasswordVisibility,
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
                                                  color: _model.passwordSet ==
                                                          false
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
                                                  color: _model.passwordSet ==
                                                          false
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                          .logInPasswordVisibility =
                                                      !_model
                                                          .logInPasswordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.logInPasswordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                .logInPasswordTextControllerValidator
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        if (_model.logInErrorMsg != null &&
                                            _model.logInErrorMsg != '')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.logInErrorMsg,
                                                'none',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context
                                                  .pushNamed('ForgotPassPage');
                                            },
                                            child: Text(
                                              'Forgot Password?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                    Builder(
                                      builder: (context) =>
                                          StreamBuilder<List<UserInfoRecord>>(
                                        stream: queryUserInfoRecord(
                                          queryBuilder: (userInfoRecord) =>
                                              userInfoRecord.where(
                                            'email',
                                            isEqualTo: _model
                                                .logInEmailTextController.text,
                                          ),
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<UserInfoRecord>
                                              logInButtonUserInfoRecordList =
                                              snapshot.data!;
                                          final logInButtonUserInfoRecord =
                                              logInButtonUserInfoRecordList
                                                      .isNotEmpty
                                                  ? logInButtonUserInfoRecordList
                                                      .first
                                                  : null;

                                          return FFButtonWidget(
                                            onPressed: () async {
                                              await authManager.refreshUser();
                                              await Future.wait([
                                                Future(() async {
                                                  if (_model.logInEmailTextController
                                                              .text !=
                                                          '') {
                                                    _model.emailSet = true;
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.emailSet = false;
                                                    safeSetState(() {});
                                                  }
                                                }),
                                                Future(() async {
                                                  if (_model.logInPasswordTextController
                                                              .text !=
                                                          '') {
                                                    _model.passwordSet = true;
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.passwordSet = false;
                                                    safeSetState(() {});
                                                  }
                                                }),
                                              ]);
                                              if (_model.emailSet &&
                                                  _model.passwordSet &&
                                                  (_model.emailValidMsg ==
                                                          null ||
                                                      _model.emailValidMsg ==
                                                          '')) {
                                                _model.logInErrorMsg =
                                                    await actions
                                                        .logInAuthCheck(
                                                  _model
                                                      .logInEmailTextController
                                                      .text,
                                                  _model
                                                      .logInPasswordTextController
                                                      .text,
                                                );
                                                if (!(_model.logInErrorMsg !=
                                                        null &&
                                                    _model.logInErrorMsg !=
                                                        '')) {
                                                  if (currentUserEmailVerified ==
                                                      true) {
                                                    FFAppState().userRef =
                                                        logInButtonUserInfoRecord
                                                            ?.reference;

                                                    await FFAppState()
                                                        .userRef!
                                                        .update(
                                                            createUserInfoRecordData(
                                                          isVerifiedLogIn: true,
                                                        ));

                                                    context
                                                        .pushNamed('Results');
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus(),
                                                              child:
                                                                  const VerifyMessageWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                }
                                              }

                                              safeSetState(() {});
                                            },
                                            text: 'Log in',
                                            options: FFButtonOptions(
                                              width: 230.0,
                                              height: 42.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
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
                                          );
                                        },
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('SignUpPage');
                                      },
                                      child: Text(
                                        'Don\'t have an account?',
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                  ]
                                      .divide(const SizedBox(height: 20.0))
                                      .addToStart(const SizedBox(height: 9.0))
                                      .addToEnd(const SizedBox(height: 9.0)),
                                ),
                              ),
                            ],
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
