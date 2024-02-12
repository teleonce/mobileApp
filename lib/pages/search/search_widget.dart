import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/pages/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
    this.search,
  });

  final String? search;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Search'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SEARCH_PAGE_Search_ON_INIT_STATE');
      logFirebaseEvent('Search_update_app_state');
      setState(() {
        FFAppState().showAds = false;
        FFAppState().menuActiveItem = 'buscar';
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
                  RefreshIndicator(
                    color: FlutterFlowTheme.of(context).primary,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    strokeWidth: 3.0,
                    onRefresh: () async {
                      logFirebaseEvent(
                          'SEARCH_ListView_hbpdh6tm_ON_PULL_TO_REFR');
                      logFirebaseEvent('ListView_navigate_to');

                      context.goNamed('Search');
                    },
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 80.0),
                          child: FlutterFlowWebView(
                            content: 'https://teleonce.com/?s=',
                            bypass: false,
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            verticalScroll: true,
                            horizontalScroll: false,
                          ),
                        ),
                      ],
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
