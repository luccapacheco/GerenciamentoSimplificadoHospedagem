import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_superior_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pag_home_widget.dart' show PagHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PagHomeModel extends FlutterFlowModel<PagHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuLateralModel.dispose();
    menuSuperiorModel.dispose();
  }
}
