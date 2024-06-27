import '/flutter_flow/flutter_flow_util.dart';
import 'email_verification_widget.dart' show EmailVerificationWidget;
import 'package:flutter/material.dart';

class EmailVerificationModel extends FlutterFlowModel<EmailVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
