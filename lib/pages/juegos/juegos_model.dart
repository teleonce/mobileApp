import '/components/main_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'juegos_widget.dart' show JuegosWidget;
import 'package:flutter/material.dart';

class JuegosModel extends FlutterFlowModel<JuegosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
  // Model for menu component.
  late MenuModel menuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mainHeaderModel = createModel(context, () => MainHeaderModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainHeaderModel.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
