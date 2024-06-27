import '/flutter_flow/flutter_flow_util.dart';
import 'export_resume_widget.dart' show ExportResumeWidget;
import 'package:flutter/material.dart';

class ExportResumeModel extends FlutterFlowModel<ExportResumeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - exportResume] action in Button widget.
  FFUploadedFile? resumeBuilder;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
