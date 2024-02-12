import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_header_model.dart';
export 'main_header_model.dart';

class MainHeaderWidget extends StatefulWidget {
  const MainHeaderWidget({
    super.key,
    bool? logoNoticias,
  }) : logoNoticias = logoNoticias ?? false;

  final bool logoNoticias;

  @override
  State<MainHeaderWidget> createState() => _MainHeaderWidgetState();
}

class _MainHeaderWidgetState extends State<MainHeaderWidget> {
  late MainHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: SizedBox(
        width: double.infinity,
        height: 74.0,
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 1.0),
          children: [
            Container(
              width: double.infinity,
              height: 74.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 0.0,
                                  borderWidth: 0.0,
                                  buttonSize: 50.0,
                                  fillColor: const Color(0x003EAE48),
                                  icon: Icon(
                                    Icons.menu,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 40.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MAIN_HEADER_COMP_menu_ICN_ON_TAP');
                                    logFirebaseEvent('IconButton_drawer');
                                    Scaffold.of(context).openDrawer();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (valueOrDefault<bool>(
                              widget.logoNoticias == false,
                              false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'MAIN_HEADER_COMP_Logo_ON_TAP');
                                      logFirebaseEvent('Logo_navigate_to');

                                      context.goNamed('Home');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/T11_Logo_FC_Original.png',
                                        width: 87.0,
                                        height: 60.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (widget.logoNoticias)
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MAIN_HEADER_COMP_LogoNoticias_ON_TAP');
                                    logFirebaseEvent(
                                        'LogoNoticias_navigate_to');

                                    context.goNamed('Noticias');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Logo-Noticias.png',
                                      width: 120.0,
                                      height: 60.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('MAIN_HEADER_COMP_Temp_ON_TAP');
                            logFirebaseEvent('Temp_navigate_to');

                            context.goNamed('ElTiempo');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 5.0,
                                  borderWidth: 1.0,
                                  buttonSize: 48.0,
                                  fillColor:
                                      FFAppState().menuActiveItem == 'buscar'
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                  icon: Icon(
                                    Icons.search,
                                    color: FFAppState().menuActiveItem ==
                                            'buscar'
                                        ? Colors.white
                                        : FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MAIN_HEADER_COMP_search_ICN_ON_TAP');
                                    logFirebaseEvent('IconButton_navigate_to');

                                    context.pushNamed(
                                      'Search',
                                      queryParameters: {
                                        'search': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
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
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/header-bar.jpg',
                  width: double.infinity,
                  height: 4.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
