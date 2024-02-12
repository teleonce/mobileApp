import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'el_tiempo_widget.dart' show ElTiempoWidget;
import 'package:flutter/material.dart';

class ElTiempoModel extends FlutterFlowModel<ElTiempoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
    tabBarController?.dispose();
    navBarModel.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
