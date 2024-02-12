import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'live_widget.dart' show LiveWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {
    mainHeaderModel = createModel(context, () => MainHeaderModel());
    navBarModel = createModel(context, () => NavBarModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainHeaderModel.dispose();
    navBarModel.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
