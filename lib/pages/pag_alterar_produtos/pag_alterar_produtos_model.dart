import '/backend/supabase/supabase.dart';
import '/components/menu_lateral_widget.dart';
import '/components/menu_superior_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pag_alterar_produtos_widget.dart' show PagAlterarProdutosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagAlterarProdutosModel
    extends FlutterFlowModel<PagAlterarProdutosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // State field(s) for txtNomeP widget.
  FocusNode? txtNomePFocusNode;
  TextEditingController? txtNomePTextController;
  String? Function(BuildContext, String?)? txtNomePTextControllerValidator;
  // State field(s) for txtQnt widget.
  FocusNode? txtQntFocusNode;
  TextEditingController? txtQntTextController;
  String? Function(BuildContext, String?)? txtQntTextControllerValidator;
  // State field(s) for txtValorP widget.
  FocusNode? txtValorPFocusNode;
  TextEditingController? txtValorPTextController;
  final txtValorPMask = MaskTextInputFormatter(mask: '##.##');
  String? Function(BuildContext, String?)? txtValorPTextControllerValidator;
  // State field(s) for dpdCate widget.
  String? dpdCateValue;
  FormFieldController<String>? dpdCateValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for dpdProduto widget.
  String? dpdProdutoValue;
  FormFieldController<String>? dpdProdutoValueController;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    menuSuperiorModel.dispose();
    txtNomePFocusNode?.dispose();
    txtNomePTextController?.dispose();

    txtQntFocusNode?.dispose();
    txtQntTextController?.dispose();

    txtValorPFocusNode?.dispose();
    txtValorPTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();
  }
}
