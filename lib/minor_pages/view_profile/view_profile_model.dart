import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_profile_widget.dart' show ViewProfileWidget;
import 'package:flutter/material.dart';

class ViewProfileModel extends FlutterFlowModel<ViewProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ChatsRecord? updatedChatThread;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newChatThread;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
