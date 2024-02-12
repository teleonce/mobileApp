import '/backend/api_requests/api_calls.dart';
import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'programa_model.dart';
export 'programa_model.dart';

class ProgramaWidget extends StatefulWidget {
  const ProgramaWidget({
    super.key,
    required this.cat,
  });

  final int? cat;

  @override
  State<ProgramaWidget> createState() => _ProgramaWidgetState();
}

class _ProgramaWidgetState extends State<ProgramaWidget> {
  late ProgramaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramaModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Programa'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROGRAMA_PAGE_Programa_ON_INIT_STATE');
      logFirebaseEvent('Programa_update_app_state');
      setState(() {
        FFAppState().menuActiveItem = 'programas';
      });
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
          width: 270.0,
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
                    child: RefreshIndicator(
                      color: FlutterFlowTheme.of(context).primary,
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      strokeWidth: 3.0,
                      onRefresh: () async {
                        logFirebaseEvent(
                            'PROGRAMA_Column_odgkht1f_ON_PULL_TO_REFR');
                        logFirebaseEvent('ListView_clear_query_cache');
                        _model.clearContenidoCacheKey(
                            'contenido-${widget.cat?.toString()}');
                        logFirebaseEvent('ListView_update_app_state');
                        setState(() {});
                      },
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          FutureBuilder<ApiCallResponse>(
                            future: _model.category(
                              uniqueQueryKey: valueOrDefault<String>(
                                widget.cat?.toString(),
                                '0',
                              ),
                              requestFn: () => AppAPIGroup.showInfoCall.call(
                                show: widget.cat?.toString(),
                              ),
                            ),
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
                              final featuredShowInfoResponse = snapshot.data!;
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 400.0,
                                      constraints: BoxConstraints(
                                        minWidth: 300.0,
                                        minHeight: 200.0,
                                        maxWidth:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        maxHeight: 500.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    AppAPIGroup.showInfoCall
                                                        .banner(
                                                          featuredShowInfoResponse
                                                              .jsonBody,
                                                        )
                                                        .toString(),
                                                    'https://teleonce.com/wp-content/uploads/2023/08/no-image.jpg',
                                                  ),
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          3.75,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: ClipRRect(
                                                      child: BackdropFilter(
                                                        filter:
                                                            ImageFilter.blur(
                                                          sigmaX: 2.0,
                                                          sigmaY: 2.0,
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xB2000000),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    12.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .replaceHTML(valueOrDefault<String>(
                                                                          AppAPIGroup
                                                                              .showInfoCall
                                                                              .horario(
                                                                                featuredShowInfoResponse.jsonBody,
                                                                              )
                                                                              .toString(),
                                                                          'Lunes a Viernes',
                                                                        )),
                                                                        'Lunes a Viernes',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                18.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            lineHeight:
                                                                                1.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
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
                                ],
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 50.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: _model.contenido(
                                uniqueQueryKey:
                                    'contenido-${widget.cat?.toString()}',
                                requestFn: () => AppAPIGroup.programsCall.call(
                                  category: widget.cat?.toString(),
                                  offset: '1',
                                  postsPerPage: '10',
                                ),
                              ),
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
                                final ultimosContenidoProgramsResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final contenido = getJsonField(
                                      ultimosContenidoProgramsResponse.jsonBody,
                                      r'''$''',
                                    ).toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(contenido.length,
                                          (contenidoIndex) {
                                        final contenidoItem =
                                            contenido[contenidoIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 6.0, 16.0, 6.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'PROGRAMA_PAGE_videoCard_ON_TAP');
                                              logFirebaseEvent(
                                                  'videoCard_navigate_to');

                                              context.pushNamed(
                                                'Post',
                                                queryParameters: {
                                                  'link': serializeParam(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        contenidoItem,
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
                                              width: double.infinity,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(12.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        getJsonField(
                                                          contenidoItem,
                                                          r'''$.image''',
                                                        )?.toString(),
                                                        'https://teleonce.com/wp-content/uploads/2023/08/no-image.jpg',
                                                      ),
                                                      width: 120.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -0.9, 0.85),
                                                    child: Container(
                                                      width: 32.0,
                                                      height: 32.0,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x230E151B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: const Icon(
                                                        Icons
                                                            .play_arrow_rounded,
                                                        color:
                                                            Color(0xFF14181B),
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(130.0,
                                                                0.0, 12.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            getJsonField(
                                                              contenidoItem,
                                                              r'''$.title''',
                                                            )?.toString(),
                                                            'titulo',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLines: 3,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: const Color(
                                                                    0xFF14181B),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                lineHeight: 1.0,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                contenidoItem,
                                                                r'''$.content''',
                                                              )?.toString(),
                                                              'contenido',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: const Color(
                                                                      0xFF57636C),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  lineHeight:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .calendar_month,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 16.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  getJsonField(
                                                                    contenidoItem,
                                                                    r'''$.date''',
                                                                  )?.toString(),
                                                                  'fecha',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
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
                                      }),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
