import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'selection_model.dart';
export 'selection_model.dart';

class SelectionWidget extends StatefulWidget {
  const SelectionWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
  });

  final String? parameter1;
  final String? parameter2;
  final bool? parameter3;

  @override
  State<SelectionWidget> createState() => _SelectionWidgetState();
}

class _SelectionWidgetState extends State<SelectionWidget> {
  late SelectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowRadioButton(
      options: <String>[].toList(),
      onChanged: widget.parameter3! ? null : (val) => setState(() {}),
      controller: _model.radioButtonValueController ??=
          FormFieldController<String>(
              FFLocalizations.of(context).getVariableText(
        enText: widget.parameter1,
        arText: widget.parameter2,
      )),
      optionHeight: 32.0,
      textStyle: FlutterFlowTheme.of(context).labelMedium.override(
            fontFamily: 'Readex Pro',
            letterSpacing: 0.0,
          ),
      selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Readex Pro',
            letterSpacing: 0.0,
          ),
      buttonPosition: RadioButtonPosition.left,
      direction: Axis.vertical,
      radioButtonColor: FlutterFlowTheme.of(context).primary,
      inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
      toggleable: false,
      horizontalAlignment: WrapAlignment.start,
      verticalAlignment: WrapCrossAlignment.start,
    );
  }
}
