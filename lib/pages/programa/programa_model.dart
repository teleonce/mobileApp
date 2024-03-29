import '/backend/api_requests/api_calls.dart';
import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'programa_widget.dart' show ProgramaWidget;
import 'package:flutter/material.dart';

class ProgramaModel extends FlutterFlowModel<ProgramaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
  // Model for menu component.
  late MenuModel menuModel;

  /// Query cache managers for this widget.

  final _categoryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> category({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _categoryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoryCache() => _categoryManager.clear();
  void clearCategoryCacheKey(String? uniqueKey) =>
      _categoryManager.clearRequest(uniqueKey);

  final _contenidoManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> contenido({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _contenidoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearContenidoCache() => _contenidoManager.clear();
  void clearContenidoCacheKey(String? uniqueKey) =>
      _contenidoManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
    mainHeaderModel = createModel(context, () => MainHeaderModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
    mainHeaderModel.dispose();
    menuModel.dispose();

    /// Dispose query cache managers for this widget.

    clearCategoryCache();

    clearContenidoCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
