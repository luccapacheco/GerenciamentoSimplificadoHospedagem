import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_superior_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pag_servico_widget.dart' show PagServicoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagServicoModel extends FlutterFlowModel<PagServicoWidget> {
  ///  Local state fields for this page.

  DateTime? dataFim;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // State field(s) for dpdServio widget.
  String? dpdServioValue;
  FormFieldController<String>? dpdServioValueController;
  // State field(s) for txtHora widget.
  FocusNode? txtHoraFocusNode;
  TextEditingController? txtHoraTextController;
  final txtHoraMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? txtHoraTextControllerValidator;
  // State field(s) for txtData widget.
  FocusNode? txtDataFocusNode;
  TextEditingController? txtDataTextController;
  final txtDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtDataTextControllerValidator;
  // State field(s) for dpdAcomo widget.
  String? dpdAcomoValue;
  FormFieldController<String>? dpdAcomoValueController;
  // State field(s) for dpdFunci widget.
  String? dpdFunciValue;
  FormFieldController<String>? dpdFunciValueController;
  // State field(s) for dpdStatus widget.
  String? dpdStatusValue;
  FormFieldController<String>? dpdStatusValueController;

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
    txtHoraFocusNode?.dispose();
    txtHoraTextController?.dispose();

    txtDataFocusNode?.dispose();
    txtDataTextController?.dispose();
  }
}
