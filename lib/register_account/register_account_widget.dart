import '../complete_profile/complete_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_page/login_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterAccountWidget extends StatefulWidget {
  RegisterAccountWidget({Key key}) : super(key: key);

  @override
  _RegisterAccountWidgetState createState() => _RegisterAccountWidgetState();
}

class _RegisterAccountWidgetState extends State<RegisterAccountWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordCreateController;
  bool passwordCreateVisibility;
  TextEditingController passwordConfirmController;
  bool passwordConfirmVisibility;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordCreateController = TextEditingController();
    passwordCreateVisibility = false;
    passwordConfirmController = TextEditingController();
    passwordConfirmVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.background,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.background,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                      'assets/images/createAccount_bg@2x.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/sinhan.png',
                              width: 130,
                              height: 50,
                              fit: BoxFit.fitWidth,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '시작하기',
                                    style: FlutterFlowTheme.title1,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '아래에서 회원가입을 진행하세요',
                                      style:
                                      FlutterFlowTheme.subtitle1.override(
                                        fontFamily: 'Lexend Deca',
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: TextFormField(
                                  controller: emailAddressController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '이메일 주소를 입력하세요',
                                    labelStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    hintText: 'Enter your email...',
                                    hintStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.darkBackground,
                                    contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 20, 24),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.textColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: TextFormField(
                                  controller: passwordCreateController,
                                  obscureText: !passwordCreateVisibility,
                                  decoration: InputDecoration(
                                    labelText: '비밀번호',
                                    labelStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    hintText: 'Enter your password...',
                                    hintStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.darkBackground,
                                    contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 20, 24),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                            () => passwordCreateVisibility =
                                        !passwordCreateVisibility,
                                      ),
                                      child: Icon(
                                        passwordCreateVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0x98FFFFFF),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.textColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: TextFormField(
                                  controller: passwordConfirmController,
                                  obscureText: !passwordConfirmVisibility,
                                  decoration: InputDecoration(
                                    labelText: '비밀번호 확인',
                                    labelStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    hintText: 'Enter your password...',
                                    hintStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.darkBackground,
                                    contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 20, 24),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                            () => passwordConfirmVisibility =
                                        !passwordConfirmVisibility,
                                      ),
                                      child: Icon(
                                        passwordConfirmVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0x98FFFFFF),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.textColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 24, 0, 24),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton1 = true);
                                    try {
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CompleteProfileWidget(),
                                        ),
                                            (r) => false,
                                      );
                                    } finally {
                                      setState(() => _loadingButton1 = false);
                                    }
                                  },
                                  text: '계정 생성하기',
                                  options: FFButtonOptions(
                                    width: 160,
                                    height: 50,
                                    color: FlutterFlowTheme.primaryColor,
                                    textStyle: FlutterFlowTheme.bodyText2,
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 30,
                                  ),
                                  loading: _loadingButton1,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width * 0.8,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.background,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            setState(
                                                    () => _loadingButton2 = true);
                                            try {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType
                                                      .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 200),
                                                  reverseDuration: Duration(
                                                      milliseconds: 200),
                                                  child: LoginPageWidget(),
                                                ),
                                              );
                                            } finally {
                                              setState(() =>
                                              _loadingButton2 = false);
                                            }
                                          },
                                          text: 'Login',
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            color:
                                            FlutterFlowTheme.primaryColor,
                                            size: 16,
                                          ),
                                          options: FFButtonOptions(
                                            width: 100,
                                            height: 40,
                                            color: FlutterFlowTheme.background,
                                            textStyle: FlutterFlowTheme
                                                .bodyText2
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                              FlutterFlowTheme.primaryColor,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                          loading: _loadingButton2,
                                        ),
                                        Text(
                                          '이미 계정이 있으신가요?',
                                          style: FlutterFlowTheme.bodyText1,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button-Login pressed ...');
                          },
                          text: 'Continue as Guest',
                          options: FFButtonOptions(
                            width: 230,
                            height: 50,
                            color: FlutterFlowTheme.background,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.textColor,
                            ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 30,
                          ),
                          loading: _loadingButton3,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
