import '/components/header_post_widget.dart';
import '/components/menu_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'post_model.dart';
export 'post_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    Key? key,
    required this.link,
  }) : super(key: key);

  final String? link;

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late PostModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Post'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('POST_PAGE_Post_ON_INIT_STATE');
      logFirebaseEvent('Post_update_app_state');
      setState(() {
        FFAppState().menuActiveItem = 'post';
        FFAppState().link = widget.link!;
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
        drawer: Container(
          width: 270.0,
          child: WebViewAware(
              child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.menuModel,
              updateCallback: () => setState(() {}),
              child: MenuWidget(),
            ),
          )),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: FlutterFlowWebView(
                            content: '${widget.link}?template=single-app',
                            bypass: false,
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            verticalScroll: true,
                            horizontalScroll: false,
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 0.0))
                          .around(SizedBox(height: 0.0)),
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
                        model: _model.headerPostModel,
                        updateCallback: () => setState(() {}),
                        child: HeaderPostWidget(),
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
