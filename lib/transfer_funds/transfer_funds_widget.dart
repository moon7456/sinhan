import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../transfer_complete/transfer_complete_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferFundsWidget extends StatefulWidget {
  TransferFundsWidget({Key key}) : super(key: key);

  @override
  _TransferFundsWidgetState createState() => _TransferFundsWidgetState();
}

class _TransferFundsWidgetState extends State<TransferFundsWidget>
    with TickerProviderStateMixin {
  String dropDownValue;
  TextEditingController textController;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      slideOffset: Offset(0, -30),
      scale: 0.4,
    ),
    'dropDownOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 140,
      fadeIn: true,
      slideOffset: Offset(0, -70),
    ),
    'textFieldOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      slideOffset: Offset(0, -80),
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: -220,
      fadeIn: true,
      scale: 0.4,
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: -220,
      fadeIn: true,
      scale: 0.4,
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.84,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.darkBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '계좌이체 하기',
                          style: FlutterFlowTheme.title1,
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            buttonSize: 48,
                            icon: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.textColor,
                              size: 30,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Color(0x4B1A1F24),
                                  offset: Offset(0, 2),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF00968A), Color(0xFFF2A384)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(0.94, -1),
                                end: AlignmentDirectional(-0.94, 1),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 12, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Balance',
                                        style:
                                        FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.textColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 4, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '₩',
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Lexend Deca',
                                          fontSize: 32,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 4, 20, 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '**** 0149',
                                        style:
                                        FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Roboto Mono',
                                          color: FlutterFlowTheme.textColor,
                                        ),
                                      ),
                                      Text(
                                        '05/25',
                                        style:
                                        FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Roboto Mono',
                                          color: FlutterFlowTheme.textColor,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ).animated([animationsMap['rowOnPageLoadAnimation1']]),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: FlutterFlowDropDown(
                        options: [
                          '계좌 선택',
                          'Account ****2010',
                          'Account ****2011',
                          'Account ****2012'
                        ].toList(),
                        onChanged: (val) => setState(() => dropDownValue = val),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        textStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.textColor,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.grayLight,
                          size: 15,
                        ),
                        fillColor: FlutterFlowTheme.darkBackground,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.background,
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(20, 20, 12, 20),
                        hidesUnderline: true,
                      ).animated(
                          [animationsMap['dropDownOnPageLoadAnimation']]),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: TextFormField(
                        controller: textController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: '₩',
                          labelStyle: FlutterFlowTheme.title1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.grayLight,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.background,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.background,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                        ),
                        style: FlutterFlowTheme.title1,
                      ).animated(
                          [animationsMap['textFieldOnPageLoadAnimation']]),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        setState(() => _loadingButton = true);
                        try {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 220),
                              reverseDuration: Duration(milliseconds: 220),
                              child: TransferCompleteWidget(),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton = false);
                        }
                      },
                      text: 'Send Transfer',
                      options: FFButtonOptions(
                        width: 300,
                        height: 70,
                        color: FlutterFlowTheme.tertiaryColor,
                        textStyle: FlutterFlowTheme.title1,
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton,
                    )
                  ],
                )
              ],
            ).animated([animationsMap['rowOnPageLoadAnimation2']]),
          ),
          Text(
            'Tap above to complete transfer',
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Lexend Deca',
              color: Color(0x43000000),
            ),
          ).animated([animationsMap['textOnPageLoadAnimation']])
        ],
      ),
    );
  }
}
