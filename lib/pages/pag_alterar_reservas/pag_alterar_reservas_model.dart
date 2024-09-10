import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_superior_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pag_alterar_reservas_widget.dart' show PagAlterarReservasWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagAlterarReservasModel
    extends FlutterFlowModel<PagAlterarReservasWidget> {
  ///  Local state fields for this page.

  DateTime? dataIni;

  DateTime? dataFim;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // State field(s) for TxtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for TxtCpf widget.
  FocusNode? txtCpfFocusNode;
  TextEditingController? txtCpfTextController;
  final txtCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtCpfTextControllerValidator;
  // State field(s) for TxtRg widget.
  FocusNode? txtRgFocusNode;
  TextEditingController? txtRgTextController;
  final txtRgMask = MaskTextInputFormatter(mask: '#.###.###');
  String? Function(BuildContext, String?)? txtRgTextControllerValidator;
  // State field(s) for Txtcidade widget.
  FocusNode? txtcidadeFocusNode;
  TextEditingController? txtcidadeTextController;
  String? Function(BuildContext, String?)? txtcidadeTextControllerValidator;
  // State field(s) for TxtDataNasc widget.
  FocusNode? txtDataNascFocusNode;
  TextEditingController? txtDataNascTextController;
  final txtDataNascMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtDataNascTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for dpdAcomo widget.
  String? dpdAcomoValue;
  FormFieldController<String>? dpdAcomoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  final textFieldMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  final textFieldMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TxtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for TxtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  final txtTelefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

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
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtCpfFocusNode?.dispose();
    txtCpfTextController?.dispose();

    txtRgFocusNode?.dispose();
    txtRgTextController?.dispose();

    txtcidadeFocusNode?.dispose();
    txtcidadeTextController?.dispose();

    txtDataNascFocusNode?.dispose();
    txtDataNascTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();
  }
}