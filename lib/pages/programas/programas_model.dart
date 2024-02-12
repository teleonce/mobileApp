import '/backend/api_requests/api_calls.dart';
import '/components/main_header_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/menu/menu_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'programas_widget.dart' show ProgramasWidget;
import 'package:flutter/material.dart';

class ProgramasModel extends FlutterFlowModel<ProgramasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // State field(s) for ProgramasDestacados widget.
  PageController? programasDestacadosController;

  int get programasDestacadosCurrentIndex =>
      programasDestacadosController != null &&
              programasDestacadosController!.hasClients &&
              programasDestacadosController!.page != null
          ? programasDestacadosController!.page!.round()
          : 0;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
  // Model for menu component.
  late MenuModel menuModel;

  /// Query cache managers for this widget.

  final _programasManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> programas({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _programasManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProgramasCache() => _programasManager.clear();
  void clearProgramasCacheKey(String? uniqueKey) =>
      _programasManager.clearRequest(uniqueKey);

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
    instantTimer?.cancel();
    navBarModel.dispose();
    mainHeaderModel.dispose();
    menuModel.dispose();

    /// Dispose query cache managers for this widget.

    clearProgramasCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
