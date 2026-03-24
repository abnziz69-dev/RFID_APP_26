import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'saved_tag_page_widget.dart' show SavedTagPageWidget;
import 'package:flutter/material.dart';

class SavedTagPageModel extends FlutterFlowModel<SavedTagPageWidget> {
  ///  Local state fields for this page.

  String searchText = ' ';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
