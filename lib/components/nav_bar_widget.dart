import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NAV_BAR_COMP_NavBar_ON_INIT_STATE');
      logFirebaseEvent('NavBar_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      logFirebaseEvent('NavBar_backend_call');
      _model.live = await GetLiveCall.call();
      logFirebaseEvent('NavBar_backend_call');
      _model.country = await CountryCall.call();
      logFirebaseEvent('NavBar_update_app_state');
      setState(() {
        FFAppState().live = GetLiveCall.live(
          (_model.live?.jsonBody ?? ''),
        )!;
        FFAppState().state = valueOrDefault<String>(
          CountryCall.country(
            (_model.country?.jsonBody ?? ''),
          ),
          'PR',
        );
        FFAppState().showAds = getRemoteConfigBool('showAds');
      });
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SizedBox(
      height: 130.0,
      child: Stack(
        children: [
          if ((FFAppState().showAds == true) &&
              (FFAppState().menuActiveItem != 'eltiempo') &&
              (FFAppState().menuActiveItem != 'post') &&
              (FFAppState().menuActiveItem != 'buscar') &&
              (FFAppState().menuActiveItem != 'live') &&
              (FFAppState().menuActiveItem != 'juegos'))
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 6.0,
                  child: ClipRRect(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 50.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 100.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 90.0;
                          } else {
                            return 50.0;
                          }
                        }(),
                        50.0,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xBFFFFFFF),
                      ),
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: ClipRRect(
                        child: Container(
                          width: valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 320.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 470.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 728.0;
                              } else {
                                return 320.0;
                              }
                            }(),
                            320.0,
                          ),
                          height: valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 50.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 50.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 90.0;
                              } else {
                                return 50.0;
                              }
                            }(),
                            50.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FlutterFlowAdBanner(
                            width: valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 320.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 470.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 728.0;
                                } else {
                                  return 320.0;
                                }
                              }(),
                              320.0,
                            ),
                            height: valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 50.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 50.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 90.0;
                                } else {
                                  return 50.0;
                                }
                              }(),
                              50.0,
                            ),
                            showsTestAd: false,
                            iOSAdUnitID:
                                'ca-app-pub-7444673555678901/7793782119',
                            androidAdUnitID:
                                'ca-app-pub-7444673555678901/3506735514',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              height: 90.0,
              decoration: const BoxDecoration(
                color: Color(0x00EEEEEE),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x1A57636C),
                                offset: Offset(0.0, -10.0),
                                spreadRadius: 0.1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('NAV_BAR_COMP_Inicio_ON_TAP');
                                logFirebaseEvent('Inicio_navigate_to');

                                context.goNamed(
                                  'Home',
                                  queryParameters: {
                                    'page': serializeParam(
                                      'home',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: SizedBox(
                                height: 60.0,
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FFAppState().menuActiveItem ==
                                                      'home'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : const Color(0x00000000),
                                          icon: Icon(
                                            Icons.home_rounded,
                                            color: FFAppState()
                                                        .menuActiveItem ==
                                                    'home'
                                                ? Colors.white
                                                : FlutterFlowTheme.of(context)
                                                    .thirdText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'NAV_BAR_COMP_Home-Nav_ON_TAP');
                                            logFirebaseEvent(
                                                'Home-Nav_navigate_to');

                                            context.goNamed('Home');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Text(
                                        'Inicio',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .thirdText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('NAV_BAR_COMP_Noticia_ON_TAP');
                                logFirebaseEvent('Noticia_navigate_to');

                                context.goNamed(
                                  'Noticias',
                                  queryParameters: {
                                    'logo': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: SizedBox(
                                height: 60.0,
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FFAppState().menuActiveItem ==
                                                      'noticias'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : const Color(0x00000000),
                                          icon: Icon(
                                            Icons.library_books_outlined,
                                            color: FFAppState()
                                                        .menuActiveItem ==
                                                    'noticias'
                                                ? Colors.white
                                                : FlutterFlowTheme.of(context)
                                                    .thirdText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'NAV_BAR_COMP_Noticias-Nav_ON_TAP');
                                            logFirebaseEvent(
                                                'Noticias-Nav_navigate_to');

                                            context.goNamed('Noticias');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Text(
                                        'Noticias',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .thirdText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().live && (FFAppState().state != 'PR'))
                          Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: const Color(0xFFA80915),
                                  borderRadius: 25.0,
                                  borderWidth: 0.0,
                                  buttonSize: 55.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: const Icon(
                                    Icons.slow_motion_video,
                                    color: Colors.white,
                                    size: 38.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'NAV_BAR_COMP_MiddleButton_ON_TAP');
                                    logFirebaseEvent(
                                        'MiddleButton_navigate_to');

                                    context.goNamed('Live');
                                  },
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Text(
                                    'En Vivo',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .thirdText,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'NAV_BAR_COMP_Programs_ON_TAP');
                                logFirebaseEvent('Programs_navigate_to');

                                context.goNamed('Programas');
                              },
                              child: SizedBox(
                                height: 60.0,
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor: FFAppState()
                                                      .menuActiveItem ==
                                                  'programas'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : const Color(0x00000000),
                                          icon: Icon(
                                            Icons.ondemand_video,
                                            color: FFAppState()
                                                        .menuActiveItem ==
                                                    'programas'
                                                ? Colors.white
                                                : FlutterFlowTheme.of(context)
                                                    .thirdText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'NAV_BAR_COMP_Programas-Nav_ON_TAP');
                                            logFirebaseEvent(
                                                'Programas-Nav_navigate_to');

                                            context.goNamed('Programas');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Text(
                                        'Programas',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .thirdText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'NAV_BAR_COMP_ElTiempo-Menu_ON_TAP');
                                logFirebaseEvent('ElTiempo-Menu_navigate_to');

                                context.goNamed('ElTiempo');
                              },
                              child: SizedBox(
                                height: 60.0,
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FFAppState().menuActiveItem ==
                                                      'eltiempo'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : const Color(0x00000000),
                                          icon: FaIcon(
                                            FontAwesomeIcons.cloudSunRain,
                                            color: FFAppState()
                                                        .menuActiveItem ==
                                                    'eltiempo'
                                                ? Colors.white
                                                : FlutterFlowTheme.of(context)
                                                    .thirdText,
                                            size: 20.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'NAV_BAR_COMP_ElTiempo-Nav_ON_TAP');
                                            logFirebaseEvent(
                                                'ElTiempo-Nav_navigate_to');

                                            context.goNamed('ElTiempo');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Text(
                                        'El Tiempo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .thirdText,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
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
        ],
      ),
    );
  }
}
