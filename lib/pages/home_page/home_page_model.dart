import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String connectionStatus = 'Not Connected';

  String scanStatus = 'No Tag Scanned Yet';

  String currentTagCode = ' ';

  String currentProductName = ' ';

  String currentProductCode = ' ';

  String currentDescription = ' ';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - rfidConnection] action in Button widget.
  bool? rfidConnectionStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
