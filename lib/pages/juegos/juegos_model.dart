import '/components/header_juegos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'juegos_widget.dart' show JuegosWidget;
import 'package:flutter/material.dart';

class JuegosModel extends FlutterFlowModel<JuegosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for headerJuegos component.
  late HeaderJuegosModel headerJuegosModel;
  // Model for menu component.
  late MenuModel menuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerJuegosModel = createModel(context, () => HeaderJuegosModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerJuegosModel.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
