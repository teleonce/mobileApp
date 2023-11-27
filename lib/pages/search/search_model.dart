import '/components/main_header_widget.dart';
import '/components/menu_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
  // Model for menu component.
  late MenuModel menuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
    mainHeaderModel = createModel(context, () => MainHeaderModel());
    menuModel = createModel(context, () => MenuModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
    mainHeaderModel.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
