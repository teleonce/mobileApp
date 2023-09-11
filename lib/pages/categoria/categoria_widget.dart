import '/backend/api_requests/api_calls.dart';
import '/components/main_header_widget.dart';
import '/components/menu_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'categoria_model.dart';
export 'categoria_model.dart';

class CategoriaWidget extends StatefulWidget {
  const CategoriaWidget({
    Key? key,
    required this.cat,
  }) : super(key: key);

  final int? cat;

  @override
  _CategoriaWidgetState createState() => _CategoriaWidgetState();
}

class _CategoriaWidgetState extends State<CategoriaWidget> {
  late CategoriaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriaModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Categoria'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CATEGORIA_PAGE_Categoria_ON_INIT_STATE');
      logFirebaseEvent('Categoria_update_app_state');
      setState(() {
        FFAppState().menuActiveItem = 'noticias';
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Container(
          width: 270.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.menuModel,
              updateCallback: () => setState(() {}),
              child: MenuWidget(),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 74.0, 0.0, 80.0),
                    child: RefreshIndicator(
                      onRefresh: () async {
                        logFirebaseEvent(
                            'CATEGORIA_Column_nzc6niq9_ON_PULL_TO_REF');
                        logFirebaseEvent('Column_clear_query_cache');
                        _model.clearNewsCacheKey(
                            'news-${widget.cat?.toString()}');
                        logFirebaseEvent('Column_refresh_database_request');
                        setState(() {
                          _model.clearNewsCacheKey(
                              _model.apiRequestLastUniqueKey);
                          _model.apiRequestCompleted = false;
                        });
                        await _model.waitForApiRequestCompleted(
                            minWait: 200, maxWait: 4000);
                        logFirebaseEvent('Column_update_app_state');
                        setState(() {});
                      },
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    constraints: BoxConstraints(
                                      minWidth:
                                          MediaQuery.sizeOf(context).width *
                                              1.0,
                                      minHeight: 50.0,
                                      maxWidth:
                                          MediaQuery.sizeOf(context).width *
                                              1.0,
                                      maxHeight: 100.0,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          Color(0xFFDFDFDF)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(0.0, -1.0),
                                        end: AlignmentDirectional(0, 1.0),
                                      ),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      6.0, 10.0, 6.0, 10.0),
                                              child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Flexible(
                                                      flex: 1,
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
                                                              'CATEGORIA_Cat-UltimasNoticias_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Cat-UltimasNoticias_navigate_to');

                                                          context.goNamed(
                                                            'Categoria',
                                                            queryParameters: {
                                                              'cat':
                                                                  serializeParam(
                                                                0,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 85.0,
                                                          height: 75.0,
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        -1.00),
                                                                child: Icon(
                                                                  Icons
                                                                      .art_track_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 58.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        1.00),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    'Últimas Noticias',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).thirdText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          lineHeight:
                                                                              1.0,
                                                                        ),
                                                                    minFontSize:
                                                                        9.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(
                                                          SizedBox(width: 1.0))
                                                      .around(
                                                          SizedBox(width: 1.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    80.0, 10.0, 6.0, 10.0),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future: _model.categorias(
                                                requestFn: () => AppAPIGroup
                                                    .newsCategoriesCall
                                                    .call(),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          SpinKitDoubleBounce(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final rowNewsCategoriesResponse =
                                                    snapshot.data!;
                                                return Builder(
                                                  builder: (context) {
                                                    final categories =
                                                        getJsonField(
                                                      rowNewsCategoriesResponse
                                                          .jsonBody,
                                                      r'''$''',
                                                    ).toList();
                                                    return SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: List.generate(
                                                                categories
                                                                    .length,
                                                                (categoriesIndex) {
                                                          final categoriesItem =
                                                              categories[
                                                                  categoriesIndex];
                                                          return Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.00, 0.00),
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
                                                                    'CATEGORIA_PAGE_Cat-Deportes_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Cat-Deportes_navigate_to');
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  'Categoria',
                                                                  queryParameters:
                                                                      {
                                                                    'cat':
                                                                        serializeParam(
                                                                      valueOrDefault<
                                                                          int>(
                                                                        getJsonField(
                                                                          categoriesItem,
                                                                          r'''$.id''',
                                                                        ),
                                                                        485,
                                                                      ),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Container(
                                                                width: 85.0,
                                                                height: 70.0,
                                                                child: Stack(
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          0.00,
                                                                          -1.00),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              CachedNetworkImage(
                                                                            fadeInDuration:
                                                                                Duration(milliseconds: 500),
                                                                            fadeOutDuration:
                                                                                Duration(milliseconds: 500),
                                                                            imageUrl:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                categoriesItem,
                                                                                r'''$.icon''',
                                                                              ),
                                                                              'https:\\/\\/teleoncestg.wpengine.com\\/wp-content\\/uploads\\/2022\\/02\\/Iconos-TeleOnce_Deporte.png',
                                                                            ),
                                                                            width:
                                                                                40.0,
                                                                            height:
                                                                                40.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          0.00,
                                                                          1.00),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            getJsonField(
                                                                              categoriesItem,
                                                                              r'''$.name''',
                                                                            ).toString(),
                                                                            'name',
                                                                          ).maybeHandleOverflow(
                                                                            maxChars:
                                                                                12,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Open Sans',
                                                                                color: FlutterFlowTheme.of(context).thirdText,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.0,
                                                                              ),
                                                                          minFontSize:
                                                                              9.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        })
                                                            .divide(SizedBox(
                                                                width: 1.0))
                                                            .around(SizedBox(
                                                                width: 1.0)),
                                                      ),
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
                                ),
                              ],
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: AppAPIGroup.newsCatCall.call(
                                cat: widget.cat?.toString(),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitDoubleBounce(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final featuredNewsCatResponse = snapshot.data!;
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/1x-benner_1.jpg',
                                          ).image,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: AutoSizeText(
                                          widget.cat! <= 0
                                              ? 'Últimas Noticias'
                                              : AppAPIGroup.newsCatCall
                                                  .name(
                                                    featuredNewsCatResponse
                                                        .jsonBody,
                                                  )
                                                  .toString(),
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                lineHeight: 1.0,
                                              ),
                                          minFontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: _model
                                    .news(
                                  uniqueQueryKey:
                                      'news-${widget.cat?.toString()}',
                                  requestFn: () => AppAPIGroup.newsCall.call(
                                    category: widget.cat?.toString(),
                                    postsPerPage: '10',
                                    paged: '1',
                                    offset: '1',
                                  ),
                                )
                                    .then((result) {
                                  try {
                                    _model.apiRequestCompleted = true;
                                    _model.apiRequestLastUniqueKey =
                                        'news-${widget.cat?.toString()}';
                                  } finally {}
                                  return result;
                                }),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitDoubleBounce(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final ultimosContenidoNewsResponse =
                                      snapshot.data!;
                                  return Builder(
                                    builder: (context) {
                                      final contenido = getJsonField(
                                        ultimosContenidoNewsResponse.jsonBody,
                                        r'''$''',
                                      ).toList();
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            contenido.length, (contenidoIndex) {
                                          final contenidoItem =
                                              contenido[contenidoIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 6.0, 16.0, 6.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'CATEGORIA_PAGE_videoCard_ON_TAP');
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
                                                        ).toString(),
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
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x230E151B),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          getJsonField(
                                                            contenidoItem,
                                                            r'''$.image''',
                                                          ),
                                                          'https://teleonce.com/wp-content/uploads/2023/08/no-image.jpg',
                                                        ),
                                                        width: 120.0,
                                                        height: 100.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.90, 0.85),
                                                      child: Container(
                                                        width: 32.0,
                                                        height: 32.0,
                                                        decoration:
                                                            BoxDecoration(
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
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Icon(
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
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  130.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
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
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          1.0,
                                                                          6.0,
                                                                          2.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        contenidoItem,
                                                                        r'''$.category''',
                                                                      ).toString(),
                                                                      'categoria',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                getJsonField(
                                                                  contenidoItem,
                                                                  r'''$.title''',
                                                                ).toString(),
                                                                'titulo',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              maxLines: 3,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .thirdText,
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    lineHeight:
                                                                        1.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .calendar_month,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 16.0,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'hace ${valueOrDefault<String>(
                                                                    getJsonField(
                                                                      contenidoItem,
                                                                      r'''$.time''',
                                                                    ).toString(),
                                                                    'unos minutos',
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                            if (FFAppState().showAds == true)
                              ClipRRect(
                                child: Container(
                                  width: 320.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 1.00),
                    child: wrapWithModel(
                      model: _model.navBarModel,
                      updateCallback: () => setState(() {}),
                      child: NavBarWidget(),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, -1.00),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 74.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.mainHeaderModel,
                        updateCallback: () => setState(() {}),
                        child: MainHeaderWidget(
                          logoNoticias: true,
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
