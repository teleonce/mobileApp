import '/backend/api_requests/api_calls.dart';
import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/menu/menu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
    String? page,
  }) : page = page ?? 'home';

  final String page;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Home'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_Home_ON_INIT_STATE');
      logFirebaseEvent('Home_update_app_state');
      setState(() {
        FFAppState().showAds = true;
        FFAppState().menuActiveItem = 'home';
      });
      logFirebaseEvent('Home_custom_action');
      await actions.lockOrientation();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: SizedBox(
          width: 240.0,
          child: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: wrapWithModel(
                model: _model.menuModel,
                updateCallback: () => setState(() {}),
                child: const MenuWidget(),
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 74.0, 0.0, 80.0),
                    child: ClipRRect(
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          minWidth: MediaQuery.sizeOf(context).width * 1.0,
                          minHeight: 300.0,
                          maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                          maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: FutureBuilder<ApiCallResponse>(
                          future: _model
                              .home(
                            requestFn: () => AppAPIGroup.homeCall.call(),
                          )
                              .then((result) {
                            _model.apiRequestCompleted = true;
                            return result;
                          }),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitFadingGrid(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            final mainHomeResponse = snapshot.data!;
                            return RefreshIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              strokeWidth: 3.0,
                              onRefresh: () async {
                                logFirebaseEvent(
                                    'HOME_PAGE_Main_ON_PULL_TO_REFRESH');
                                logFirebaseEvent('Main_clear_query_cache');
                                _model.clearHomeCache();
                                logFirebaseEvent(
                                    'Main_refresh_database_request');
                                setState(() {
                                  _model.clearHomeCache();
                                  _model.apiRequestCompleted = false;
                                });
                                await _model.waitForApiRequestCompleted(
                                    minWait: 100, maxWait: 2000);
                                logFirebaseEvent('Main_update_app_state');
                                setState(() {});
                              },
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 400.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 500.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 600.0;
                                        } else {
                                          return 400.0;
                                        }
                                      }(),
                                      400.0,
                                    ),
                                    constraints: BoxConstraints(
                                      minWidth: double.infinity,
                                      minHeight: 300.0,
                                      maxWidth: double.infinity,
                                      maxHeight: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 400.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 600.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 800.0;
                                        } else {
                                          return 400.0;
                                        }
                                      }(),
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final slides =
                                                  AppAPIGroup.homeCall
                                                          .baner(
                                                            mainHomeResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toList() ??
                                                      [];
                                              return SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: PageView.builder(
                                                        controller: _model
                                                                .centerStageController ??=
                                                            PageController(
                                                                initialPage: min(
                                                                    0,
                                                                    slides.length -
                                                                        1)),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            slides.length,
                                                        itemBuilder: (context,
                                                            slidesIndex) {
                                                          final slidesItem =
                                                              slides[
                                                                  slidesIndex];
                                                          return Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'HOME_PAGE_Image_q4qs6end_ON_TAP');
                                                                if (getJsonField(
                                                                      slidesItem,
                                                                      r'''$.link''',
                                                                    ) !=
                                                                    getJsonField(
                                                                      slidesItem,
                                                                      r'''$.video''',
                                                                    )) {
                                                                  logFirebaseEvent(
                                                                      'Image_launch_u_r_l');
                                                                  await launchURL(
                                                                      getJsonField(
                                                                    slidesItem,
                                                                    r'''$.link''',
                                                                  ).toString());
                                                                }
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    CachedNetworkImage(
                                                                  fadeInDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  fadeOutDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  imageUrl:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      slidesItem,
                                                                      r'''$.image''',
                                                                    )?.toString(),
                                                                    'https://teleonce.com/wp-content/uploads/2023/09/center-stage-movil-1.jpg',
                                                                  ),
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: double
                                                                      .infinity,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: smooth_page_indicator
                                                            .SmoothPageIndicator(
                                                          controller: _model
                                                                  .centerStageController ??=
                                                              PageController(
                                                                  initialPage: min(
                                                                      0,
                                                                      slides.length -
                                                                          1)),
                                                          count: slides.length,
                                                          axisDirection:
                                                              Axis.horizontal,
                                                          onDotClicked:
                                                              (i) async {
                                                            await _model
                                                                .centerStageController!
                                                                .animateToPage(
                                                              i,
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      500),
                                                              curve:
                                                                  Curves.ease,
                                                            );
                                                          },
                                                          effect: smooth_page_indicator
                                                              .ExpandingDotsEffect(
                                                            expansionFactor:
                                                                3.0,
                                                            spacing: 8.0,
                                                            radius: 16.0,
                                                            dotWidth: 16.0,
                                                            dotHeight: 4.0,
                                                            dotColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            activeDotColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            paintStyle:
                                                                PaintingStyle
                                                                    .fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'HOME_PAGE_Image_2qeo8sqi_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_navigate_to');
                                                if (Navigator.of(context)
                                                    .canPop()) {
                                                  context.pop();
                                                }
                                                context.pushNamed(
                                                  'Programa',
                                                  queryParameters: {
                                                    'cat': serializeParam(
                                                      7,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/LasNoticias-Header.png',
                                                  width: 163.0,
                                                  height: 40.0,
                                                  fit: BoxFit.fitHeight,
                                                  alignment:
                                                      const Alignment(-1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0xFF223659),
                                                    FlutterFlowTheme.of(context)
                                                        .primary
                                                  ],
                                                  stops: const [0.0, 1.0],
                                                  begin: const AlignmentDirectional(
                                                      1.0, 0.0),
                                                  end: const AlignmentDirectional(
                                                      -1.0, 0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'HOME_PAGE_VER_MÁS_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_navigate_to');

                                                  context.pushNamed('Noticias');
                                                },
                                                text: 'Ver Más',
                                                options: FFButtonOptions(
                                                  width: 80.0,
                                                  height: 32.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 5.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFF223659),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        lineHeight: 1.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                showLoadingIndicator: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                        .divide(const SizedBox(width: 0.0))
                                        .around(const SizedBox(width: 0.0)),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 6.0),
                                      child: Builder(
                                        builder: (context) {
                                          final noticias = AppAPIGroup.homeCall
                                                  .noticias(
                                                    mainHomeResponse.jsonBody,
                                                  )
                                                  ?.toList() ??
                                              [];
                                          if (noticias.isEmpty) {
                                            return Center(
                                              child: Image.asset(
                                                'assets/images/benner_1.jpg',
                                                width: double.infinity,
                                                height: 200.0,
                                              ),
                                            );
                                          }
                                          return SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children:
                                                  List.generate(noticias.length,
                                                      (noticiasIndex) {
                                                final noticiasItem =
                                                    noticias[noticiasIndex];
                                                return Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 12.0,
                                                                5.0, 12.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'HOME_PAGE_Container_vkkb6a4z_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'Post',
                                                          queryParameters: {
                                                            'link':
                                                                serializeParam(
                                                              valueOrDefault<
                                                                  String>(
                                                                getJsonField(
                                                                  noticiasItem,
                                                                  r'''$.link''',
                                                                )?.toString(),
                                                                'https://teleonce.com',
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 160.0,
                                                        height: 200.0,
                                                        constraints:
                                                            const BoxConstraints(
                                                          minHeight: 170.0,
                                                          maxHeight: 300.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0xFFF3F3F3),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      4.0,
                                                                      4.0,
                                                                      12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      getJsonField(
                                                                        noticiasItem,
                                                                        r'''$.image''',
                                                                      )?.toString(),
                                                                      'https://teleonce.com/wp-content/uploads/2023/08/no-image.jpg',
                                                                    ),
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        90.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            3.0,
                                                                            8.0,
                                                                            2.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            getJsonField(
                                                                              noticiasItem,
                                                                              r'''$.category''',
                                                                            )?.toString(),
                                                                            'cat',
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .override(
                                                                                fontFamily: 'Open Sans',
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    getJsonField(
                                                                      noticiasItem,
                                                                      r'''$.title''',
                                                                    )?.toString(),
                                                                    'Titulo',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  maxLines: 3,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .calendar_month,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'hace ${valueOrDefault<String>(
                                                                        getJsonField(
                                                                          noticiasItem,
                                                                          r'''$.time''',
                                                                        )?.toString(),
                                                                        'unos minutos',
                                                                      )}',
                                                                      maxLines:
                                                                          1,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Open Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            lineHeight:
                                                                                1.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF0B112B),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 20.0),
                                          child: Builder(
                                            builder: (context) {
                                              final programas =
                                                  AppAPIGroup.homeCall
                                                          .showsCat(
                                                            mainHomeResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toList() ??
                                                      [];
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: List.generate(
                                                          programas.length,
                                                          (programasIndex) {
                                                    final programasItem =
                                                        programas[
                                                            programasIndex];
                                                    return Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'HOME_PAGE_Noticias-Icon_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Noticias-Icon_navigate_to');

                                                          context.goNamed(
                                                            'Programa',
                                                            queryParameters: {
                                                              'cat':
                                                                  serializeParam(
                                                                valueOrDefault<
                                                                    int>(
                                                                  getJsonField(
                                                                    programasItem,
                                                                    r'''$.id''',
                                                                  ),
                                                                  1,
                                                                ),
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              CachedNetworkImage(
                                                            fadeInDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        500),
                                                            fadeOutDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        500),
                                                            imageUrl:
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                programasItem,
                                                                r'''$.image''',
                                                              )?.toString(),
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/t11-app-v3wyq9/assets/8a7zb3u9hzc8/no-image_(1).jpg',
                                                            ),
                                                            width: 110.0,
                                                            height: 150.0,
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 12.0))
                                                      .around(const SizedBox(
                                                          width: 12.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 1000.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF0B112B),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Builder(
                                          builder: (context) {
                                            final ultimosProgramas =
                                                getJsonField(
                                              mainHomeResponse.jsonBody,
                                              r'''$.programas''',
                                            ).toList();
                                            if (ultimosProgramas.isEmpty) {
                                              return Center(
                                                child: Image.asset(
                                                  'assets/images/no-image_(1).jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                ),
                                              );
                                            }
                                            return Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: List.generate(
                                                      ultimosProgramas.length,
                                                      (ultimosProgramasIndex) {
                                                final ultimosProgramasItem =
                                                    ultimosProgramas[
                                                        ultimosProgramasIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 6.0, 16.0, 6.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'HOME_PAGE_Program-Card_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Program-Card_navigate_to');
                                                      if (Navigator.of(context)
                                                          .canPop()) {
                                                        context.pop();
                                                      }
                                                      context.pushNamed(
                                                        'Post',
                                                        queryParameters: {
                                                          'link':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                ultimosProgramasItem,
                                                                r'''$.link''',
                                                              )?.toString(),
                                                              'https://teleonce.com',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x230E151B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                getJsonField(
                                                                  ultimosProgramasItem,
                                                                  r'''$.image''',
                                                                )?.toString(),
                                                                'https://teleonce.com/wp-content/uploads/2023/08/no-image.jpg',
                                                              ),
                                                              width: 120.0,
                                                              height: 100.0,
                                                              fit: BoxFit.cover,
                                                              errorBuilder: (context,
                                                                      error,
                                                                      stackTrace) =>
                                                                  Image.asset(
                                                                'assets/images/error_image.jpg',
                                                                width: 120.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        130.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      FFAppState()
                                                                              .menuItemColors[
                                                                          valueOrDefault<
                                                                              int>(
                                                                        ultimosProgramasIndex,
                                                                        1,
                                                                      )],
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            1.0,
                                                                            5.0,
                                                                            1.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        const Icon(
                                                                          Icons
                                                                              .video_call_sharp,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              2.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              getJsonField(
                                                                                ultimosProgramasItem,
                                                                                r'''$.category''',
                                                                              )?.toString(),
                                                                              'cat',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  color: Colors.white,
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        ultimosProgramasItem,
                                                                        r'''$.title''',
                                                                      )?.toString(),
                                                                      'titulo',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    maxLines: 3,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              const Color(0xFF14181B),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          lineHeight:
                                                                              1.0,
                                                                        ),
                                                                    minFontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .calendar_month,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              2.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              'hace ${valueOrDefault<String>(
                                                                                getJsonField(
                                                                                  ultimosProgramasItem,
                                                                                  r'''$.time''',
                                                                                )?.toString(),
                                                                                '1 hora',
                                                                              )}',
                                                                              '1 hora',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              })
                                                  .divide(const SizedBox(height: 2.0))
                                                  .around(
                                                      const SizedBox(height: 2.0)),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 74.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.mainHeaderModel,
                        updateCallback: () => setState(() {}),
                        child: const MainHeaderWidget(
                          logoNoticias: false,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.navBarModel,
                      updateCallback: () => setState(() {}),
                      child: const NavBarWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
