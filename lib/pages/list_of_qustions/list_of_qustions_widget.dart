import '/backend/schema/structs/index.dart';
import '/components/selection_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_of_qustions_model.dart';
export 'list_of_qustions_model.dart';

class ListOfQustionsWidget extends StatefulWidget {
  const ListOfQustionsWidget({
    super.key,
    required this.listOfQustions,
  });

  final List<AnswerModelStruct>? listOfQustions;

  @override
  State<ListOfQustionsWidget> createState() => _ListOfQustionsWidgetState();
}

class _ListOfQustionsWidgetState extends State<ListOfQustionsWidget> {
  late ListOfQustionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListOfQustionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final local = widget.listOfQustions!.toList();

        return ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: local.length,
          itemBuilder: (context, localIndex) {
            final localItem = local[localIndex];
            return Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                child: SelectionWidget(
                  key: Key('Keyc9x_${localIndex}_of_${local.length}'),
                  parameter1: localItem.answerEn,
                  parameter2: localItem.answerAr,
                  parameter3: localItem.isSelected,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
