import '/flutter_flow/flutter_flow_util.dart';
import '/pages/list_of_qustions/list_of_qustions_widget.dart';
import 'question_page_widget.dart' show QuestionPageWidget;
import 'package:flutter/material.dart';

class QuestionPageModel extends FlutterFlowModel<QuestionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for listOfQustions component.
  late ListOfQustionsModel listOfQustionsModel;

  @override
  void initState(BuildContext context) {
    listOfQustionsModel = createModel(context, () => ListOfQustionsModel());
  }

  @override
  void dispose() {
    listOfQustionsModel.dispose();
  }
}
