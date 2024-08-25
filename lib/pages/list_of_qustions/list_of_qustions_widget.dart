import '/backend/schema/structs/index.dart';
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
              padding:
                  const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 5.0),
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState((){
                            local.map((toElement){
                              toElement.isSelected = false;
                            }).toList();
                            localItem.isSelected = true;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Visibility(
                                  visible: localItem.isSelected,
                                  child: Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primary,
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getVariableText(
                            enText: localItem.answerEn,
                            arText: localItem.answerAr),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF474646),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                // child: SelectionWidget(
                //   key: Key('Keyc9x_${localIndex}_of_${local.length}'),
                //   parameter1: localItem.answerEn,
                //   parameter2: localItem.answerAr,
                //   parameter3: localItem.isSelected,
                // ),
              ),
            );
          },
        );
      },
    );
  }
}
