import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_superior_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pag_alterar_hospede_widget.dart' show PagAlterarHospedeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagAlterarHospedeModel extends FlutterFlowModel<PagAlterarHospedeWidget> {
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
  final txtRgMask = MaskTextInputFormatter(mask: '#.###-###');
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
  // State field(s) for TxtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for TxtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  final txtTelefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;

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

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController8?.dispose();
  }
}
