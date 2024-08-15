import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<QustionModelStruct> listOfQustions = [];
  void addToListOfQustions(QustionModelStruct item) => listOfQustions.add(item);
  void removeFromListOfQustions(QustionModelStruct item) =>
      listOfQustions.remove(item);
  void removeAtIndexFromListOfQustions(int index) =>
      listOfQustions.removeAt(index);
  void insertAtIndexInListOfQustions(int index, QustionModelStruct item) =>
      listOfQustions.insert(index, item);
  void updateListOfQustionsAtIndex(
          int index, Function(QustionModelStruct) updateFn) =>
      listOfQustions[index] = updateFn(listOfQustions[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
