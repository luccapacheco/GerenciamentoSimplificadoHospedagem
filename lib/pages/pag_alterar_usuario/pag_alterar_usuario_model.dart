import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_superior_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pag_alterar_usuario_widget.dart' show PagAlterarUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagAlterarUsuarioModel extends FlutterFlowModel<PagAlterarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

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
  // State field(s) for TxtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for DpdProfisso widget.
  String? dpdProfissoValue;
  FormFieldController<String>? dpdProfissoValueController;
  // State field(s) for TxtLogin widget.
  FocusNode? txtLoginFocusNode;
  TextEditingController? txtLoginTextController;
  String? Function(BuildContext, String?)? txtLoginTextControllerValidator;
  // State field(s) for TxtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaTextController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    txtSenhaVisibility = false;
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    menuSuperiorModel.dispose();
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtCpfFocusNode?.dispose();
    txtCpfTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtLoginFocusNode?.dispose();
    txtLoginTextController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();
  }
}
