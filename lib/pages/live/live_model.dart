import '/components/main_header_widget.dart';
import '/components/menu_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'live_widget.dart' show LiveWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class LiveModel extends FlutterFlowModel<LiveWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for menu component.
  late MenuModel menuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainHeaderModel = createModel(context, () => MainHeaderModel());
    navBarModel = createModel(context, () => NavBarModel());
    menuModel = createModel(context, () => MenuModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainHeaderModel.dispose();
    navBarModel.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
