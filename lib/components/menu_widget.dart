import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    this.busqueda,
    this.menuItem,
  });

  final String? busqueda;
  final String? menuItem;

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 270.0,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(0.0, 2.0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/T11_Logo_FC_Original.png',
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MENU_COMP_contentView_1_ON_TAP');
                  logFirebaseEvent('contentView_1_navigate_to');

                  context.goNamed('Home');
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FFAppState().menuActiveItem == 'home'
                        ? const Color(0xFFE1ECFB)
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Container(
                            width: 4.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FFAppState().menuActiveItem == 'home'
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0xFFE1ECFB),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.home_outlined,
                          color: Color(0xFF384E58),
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Inicio',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).thirdText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MENU_COMP_contentView_1_ON_TAP');
                  logFirebaseEvent('contentView_1_navigate_to');

                  context.goNamed('Noticias');
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FFAppState().menuActiveItem == 'noticias'
                        ? const Color(0xFFE1ECFB)
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Container(
                            width: 4.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FFAppState().menuActiveItem == 'noticias'
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0xFFE1ECFB),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.library_books_outlined,
                          color: Color(0xFF384E58),
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Noticias',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF384E58),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MENU_COMP_contentView_1_ON_TAP');
                  logFirebaseEvent('contentView_1_navigate_to');
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed('Programas');
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FFAppState().menuActiveItem == 'programas'
                        ? const Color(0xFFE1ECFB)
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Container(
                            width: 4.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FFAppState().menuActiveItem == 'programas'
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0xFFE1ECFB),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.ondemand_video,
                          color: Color(0xFF384E58),
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Programas',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF384E58),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MENU_COMP_contentView_1_ON_TAP');
                  logFirebaseEvent('contentView_1_navigate_to');
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed('ElTiempo');
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FFAppState().menuActiveItem == 'eltiempo'
                        ? const Color(0xFFE1ECFB)
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Container(
                            width: 4.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FFAppState().menuActiveItem == 'eltiempo'
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0xFFE1ECFB),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        const FaIcon(
                          FontAwesomeIcons.cloudSunRain,
                          color: Color(0xFF384E58),
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'El Tiempo',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF384E58),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MENU_COMP_Buscar_ON_TAP');
                  logFirebaseEvent('Buscar_navigate_to');
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed('Search');
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FFAppState().menuActiveItem == 'buscar'
                        ? const Color(0xFFE1ECFB)
                        : const Color(0x00000000),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Container(
                            width: 4.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD6E5EC),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.manage_search_rounded,
                          color: Color(0xFF384E58),
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Busqueda',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF384E58),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('MENU_COMP_Facebook_ON_TAP');
                                logFirebaseEvent('Facebook_launch_u_r_l');
                                await launchURL(
                                    'https://www.facebook.com/TeleOncePR/');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.facebookSquare,
                                color: FlutterFlowTheme.of(context).thirdText,
                                size: 36.0,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('MENU_COMP_Instagram_ON_TAP');
                                logFirebaseEvent('Instagram_launch_u_r_l');
                                await launchURL(
                                    'httphttps://www.instagram.com/teleonce/');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.instagramSquare,
                                color: FlutterFlowTheme.of(context).thirdText,
                                size: 36.0,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('MENU_COMP_Twitter_ON_TAP');
                                logFirebaseEvent('Twitter_launch_u_r_l');
                                await launchURL('https://twitter.com/tele11PR');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.twitterSquare,
                                color: FlutterFlowTheme.of(context).thirdText,
                                size: 36.0,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('MENU_COMP_Twitter_ON_TAP');
                                logFirebaseEvent('Twitter_launch_u_r_l');
                                await launchURL(
                                    'https://www.youtube.com/c/TeleOncePuertoRico');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.youtubeSquare,
                                color: FlutterFlowTheme.of(context).thirdText,
                                size: 36.0,
                              ),
                            ),
                          ]
                              .divide(const SizedBox(width: 10.0))
                              .around(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Text(
                              'Copyright © 2023 TeleOnce. \nTodos los derechos reservados.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color:
                                        FlutterFlowTheme.of(context).thirdText,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 10.0))
                            .around(const SizedBox(width: 10.0)),
                      ),
                    ),
                    const Divider(
                      height: 12.0,
                      thickness: 2.0,
                      color: Color(0xFFC8D7E4),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.perm_device_info_sharp,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentUserUid.maybeHandleOverflow(
                                        maxChars: 8),
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: const Color(0xFF384E58),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MENU_COMP_Icon_hs3fj3iq_ON_TAP');
                              logFirebaseEvent('Icon_auth');
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              context.goNamedAuth(
                                  'onboarding', context.mounted);
                            },
                            child: Icon(
                              Icons.logout_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
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
      ),
    );
  }
}
