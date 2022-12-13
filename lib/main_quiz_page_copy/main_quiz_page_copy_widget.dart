import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainQuizPageCopyWidget extends StatefulWidget {
  const MainQuizPageCopyWidget({Key? key}) : super(key: key);

  @override
  _MainQuizPageCopyWidgetState createState() => _MainQuizPageCopyWidgetState();
}

class _MainQuizPageCopyWidgetState extends State<MainQuizPageCopyWidget> {
  ApiCallResponse? apiResult3mg;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiCallResponse? apiResult85x;
  ApiCallResponse? skinQuestionRes;
  ApiCallResponse? apiResultc4c;
  String? radioButtonValue1;
  String? radioButtonValue2;

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      apiResult3mg = await GetQuestionApiCall.call(
        accessToken: FFAppState().accessToken,
        tempTestId: getJsonField(
          FFAppState().testDetail,
          r'''$.student_test_status[0]["temp_test_id"]''',
        ).toString(),
        sectionId: '0',
        responseType: '1',
      );
      if (getJsonField(
            (apiResult3mg?.jsonBody ?? ''),
            r'''$.response''',
          ) ==
          getJsonField(
            FFAppState().LoginStaticValue,
            r'''$.response''',
          )) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Success',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 0),
            backgroundColor: Color(0x00000000),
          ),
        );
        setState(() {
          FFAppState().questionJson = getJsonField(
            (apiResult3mg?.jsonBody ?? ''),
            r'''$''',
          );
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'False',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: Color(0x00000000),
          ),
        );
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Color(0xFF337AB7),
              automaticallyImplyLeading: false,
              title: Text(
                'Main Quiz Page',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: FlutterFlowTheme.of(context).title2Family,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title2Family),
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0,
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: FutureBuilder<ApiCallResponse>(
                  future: GetQuestionApiCall.call(
                    accessToken: FFAppState().accessToken,
                    tempTestId: getJsonField(
                      FFAppState().testDetail,
                      r'''$.student_test_status[0]["temp_test_id"]''',
                    ).toString(),
                    sectionId: '0',
                    responseType: '1',
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: SpinKitFadingCircle(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 20,
                          ),
                        ),
                      );
                    }
                    final columnGetQuestionApiResponse = snapshot.data!;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 2, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                icon: Icon(
                                                  Icons.close,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Leave test?'),
                                                                content: Text(
                                                                    'Are you sure to leave test?'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: Text(
                                                                        'Cancel'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: Text(
                                                                        'Yes'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    context.goNamed(
                                                      'StartQuizPage',
                                                      queryParams: {
                                                        'testName':
                                                            serializeParam(
                                                          getJsonField(
                                                            FFAppState()
                                                                .testDetail,
                                                            r'''$.test_name''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'testDurationHour':
                                                            serializeParam(
                                                          getJsonField(
                                                            FFAppState()
                                                                .testDetail,
                                                            r'''$.test_hour''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'testDurationMin':
                                                            serializeParam(
                                                          getJsonField(
                                                            FFAppState()
                                                                .testDetail,
                                                            r'''$.test_mnt''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'section':
                                                            serializeParam(
                                                          'English(1of3)',
                                                          ParamType.String,
                                                        ),
                                                        'totalQue':
                                                            serializeParam(
                                                          getJsonField(
                                                            FFAppState()
                                                                .testDetail,
                                                            r'''$.total_question''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'testId':
                                                            serializeParam(
                                                          getJsonField(
                                                            FFAppState()
                                                                .testDetail,
                                                            r'''$.test_id''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'studentId':
                                                            serializeParam(
                                                          getJsonField(
                                                            FFAppState()
                                                                .testDetail,
                                                            r'''$.student_id''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );

                                                    setState(() {
                                                      FFAppState()
                                                          .QuestionNumber = '1';
                                                    });
                                                  } else {
                                                    return;
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                          ))
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 0),
                                                child: Html(
                                                  data: functions.htmlText(
                                                      getJsonField(
                                                        columnGetQuestionApiResponse
                                                            .jsonBody,
                                                        r'''$''',
                                                      ),
                                                      FFAppState()
                                                          .QuestionNumber),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 0, 16),
                                        child: FlutterFlowRadioButton(
                                          options: (getJsonField(
                                            functions.testForQuestion(
                                                getJsonField(
                                                  FFAppState().questionJson,
                                                  r'''$''',
                                                ),
                                                FFAppState().QuestionNumber),
                                            r'''$.answer..text''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()
                                              .toList(),
                                          onChanged: (val) async {
                                            setState(
                                                () => radioButtonValue1 = val);
                                            var _shouldSetState = false;
                                            apiResultc4c =
                                                await SaveQuestionResponseCall
                                                    .call(
                                              accessToken:
                                                  FFAppState().accessToken,
                                              questionId: getJsonField(
                                                functions.testForQuestion(
                                                    getJsonField(
                                                      FFAppState().questionJson,
                                                      r'''$''',
                                                    ),
                                                    FFAppState()
                                                        .QuestionNumber),
                                                r'''$.question_id''',
                                              ).toString(),
                                              tempTestId: getJsonField(
                                                FFAppState().testDetail,
                                                r'''$.student_test_status[0]["temp_test_id"]''',
                                              ).toString(),
                                              response: functions.nestedmap(
                                                  getJsonField(
                                                    functions.testForQuestion(
                                                        getJsonField(
                                                          FFAppState()
                                                              .questionJson,
                                                          r'''$''',
                                                        ),
                                                        FFAppState()
                                                            .QuestionNumber),
                                                    r'''$''',
                                                  ),
                                                  radioButtonValue1!),
                                            );
                                            _shouldSetState = true;
                                            if (getJsonField(
                                                  (apiResultc4c?.jsonBody ??
                                                      ''),
                                                  r'''$.response''',
                                                ) ==
                                                getJsonField(
                                                  FFAppState().LoginStaticValue,
                                                  r'''$.response''',
                                                )) {
                                              setState(() {
                                                FFAppState().showErrorMsg =
                                                    false;
                                              });
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (apiResultc4c?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    ).toString(),
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 2000),
                                                  backgroundColor:
                                                      Color(0x00000000),
                                                ),
                                              );

                                              context.pushNamed(
                                                'MainQuizPage',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (apiResultc4c?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    ).toString(),
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      Color(0x00000000),
                                                ),
                                              );
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          optionHeight: 25,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family),
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor: Colors.blue,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 16),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'previously you selected : ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                            Expanded(
                                              child: Text(
                                                functions.nestedmap(
                                                    getJsonField(
                                                      functions.testForQuestion(
                                                          getJsonField(
                                                            FFAppState()
                                                                .questionJson,
                                                            r'''$''',
                                                          ),
                                                          FFAppState()
                                                              .QuestionNumber),
                                                      r'''$''',
                                                    ),
                                                    getJsonField(
                                                      functions.testForQuestion(
                                                          getJsonField(
                                                            FFAppState()
                                                                .questionJson,
                                                            r'''$''',
                                                          ),
                                                          FFAppState()
                                                              .QuestionNumber),
                                                      r'''$.given_ans''',
                                                    ).toString()),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary400,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (FFAppState().showErrorMsg == true)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Please select answer or skip question.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                            ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 20, 16, 16),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 12, 0, 24),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (FFAppState().QuestionNumber != '1')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary400,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 8, 12, 8),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().QuestionNumber =
                                                      functions.minusFromOne(
                                                          FFAppState()
                                                              .QuestionNumber);
                                                });

                                                context.pushNamed(
                                                  'MainQuizPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0xFFF1F4F8),
                                                    elevation: 0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 8, 8, 8),
                                                      child: Icon(
                                                        Icons.skip_previous,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary400,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Previous',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary400,
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .subtitle2Family),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (getJsonField(
                                          FFAppState().testDetail,
                                          r'''$.total_question''',
                                        ) !=
                                        FFAppState().QuestionNumber)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 16, 20, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            var _shouldSetState = false;
                                            skinQuestionRes =
                                                await SkipQuestionCall.call(
                                              tempTestId: getJsonField(
                                                FFAppState().testDetail,
                                                r'''$.student_test_status[0]["temp_test_id"]''',
                                              ).toString(),
                                              questionId: getJsonField(
                                                functions.testForQuestion(
                                                    getJsonField(
                                                      FFAppState().questionJson,
                                                      r'''$''',
                                                    ),
                                                    FFAppState()
                                                        .QuestionNumber),
                                                r'''$.question_id''',
                                              ).toString(),
                                              accessToken:
                                                  FFAppState().accessToken,
                                            );
                                            _shouldSetState = true;
                                            if (getJsonField(
                                                  (skinQuestionRes?.jsonBody ??
                                                      ''),
                                                  r'''$.response''',
                                                ) !=
                                                getJsonField(
                                                  FFAppState().LoginStaticValue,
                                                  r'''$.response''',
                                                )) {
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                            setState(() {
                                              FFAppState().QuestionNumber =
                                                  functions.addTwoString(
                                                      FFAppState()
                                                          .QuestionNumber);
                                              FFAppState().showErrorMsg = false;
                                            });

                                            context.pushNamed(
                                              'MainQuizPage',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF337AB7),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 8, 12, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0xFFF1F4F8),
                                                    elevation: 0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 8, 8, 8),
                                                      child: Icon(
                                                        Icons.swipe,
                                                        color:
                                                            Color(0xFF57636C),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Skip',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .subtitle2Family),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (getJsonField(
                                          FFAppState().testDetail,
                                          r'''$.total_question''',
                                        ) !=
                                        FFAppState().QuestionNumber)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 16, 20, 0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF39D2C0),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 8, 12, 8),
                                            child: InkWell(
                                              onTap: () async {
                                                if (getJsonField(
                                                      functions.testForQuestion(
                                                          getJsonField(
                                                            FFAppState()
                                                                .questionJson,
                                                            r'''$''',
                                                          ),
                                                          FFAppState()
                                                              .QuestionNumber),
                                                      r'''$.given_ans''',
                                                    ) ==
                                                    getJsonField(
                                                      FFAppState()
                                                          .StaticjsonForDashboard,
                                                      r'''$.given_ans''',
                                                    )) {
                                                  setState(() {
                                                    FFAppState().showErrorMsg =
                                                        true;
                                                  });
                                                  return;
                                                }
                                                setState(() {
                                                  FFAppState().QuestionNumber =
                                                      functions.addTwoString(
                                                          FFAppState()
                                                              .QuestionNumber);
                                                });

                                                context.pushNamed(
                                                  'MainQuizPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0xFFF1F4F8),
                                                    elevation: 0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 8, 8, 8),
                                                      child: Icon(
                                                        Icons.navigate_next,
                                                        color:
                                                            Color(0xFF57636C),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Next',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .subtitle2Family),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (getJsonField(
                                          FFAppState().testDetail,
                                          r'''$.total_question''',
                                        ) ==
                                        FFAppState().QuestionNumber)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 16, 20, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            var _shouldSetState = false;
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Complete Test?'),
                                                          content: Text(
                                                              'You have attempted all questions , Do you want to complete the test'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancel'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child:
                                                                  Text('yes'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                            if (!confirmDialogResponse) {
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                            apiResult85x =
                                                await FinishTestCall.call(
                                              tempTestId: getJsonField(
                                                FFAppState().testDetail,
                                                r'''$.student_test_status[0]["temp_test_id"]''',
                                              ).toString(),
                                              responseType: '1',
                                              studentId: getJsonField(
                                                FFAppState().testDetail,
                                                r'''$.student_id''',
                                              ).toString(),
                                              testId: getJsonField(
                                                FFAppState().testDetail,
                                                r'''$.test_id''',
                                              ).toString(),
                                              accessToken:
                                                  FFAppState().accessToken,
                                            );
                                            _shouldSetState = true;
                                            if (getJsonField(
                                                  (apiResult85x?.jsonBody ??
                                                      ''),
                                                  r'''$.response''',
                                                ) ==
                                                getJsonField(
                                                  FFAppState().LoginStaticValue,
                                                  r'''$.response''',
                                                )) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (apiResult85x?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    ).toString(),
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      Color(0x00000000),
                                                ),
                                              );

                                              context.goNamed(
                                                'ResultPage',
                                                queryParams: {
                                                  'temp': serializeParam(
                                                    getJsonField(
                                                      FFAppState().testDetail,
                                                      r'''$.student_test_status[0]["temp_test_id"]''',
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (apiResult85x?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    ).toString(),
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      Color(0x00000000),
                                                ),
                                              );
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          text: 'Finish',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 60,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary400,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .subtitle2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .subtitle2Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                                ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowRadioButton(
                                  options: [
                                    'Option 1',
                                    'Option 2',
                                    'Option 3',
                                    'Option 4'
                                  ].toList(),
                                  onChanged: (val) =>
                                      setState(() => radioButtonValue2 = val),
                                  optionHeight: 25,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: Colors.black,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                  buttonPosition: RadioButtonPosition.left,
                                  direction: Axis.vertical,
                                  radioButtonColor: Colors.blue,
                                  inactiveRadioButtonColor: Color(0x8A000000),
                                  toggleable: false,
                                  horizontalAlignment: WrapAlignment.start,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
