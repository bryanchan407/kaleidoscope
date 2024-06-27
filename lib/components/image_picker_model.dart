import '/flutter_flow/flutter_flow_util.dart';
import 'image_picker_widget.dart' show ImagePickerWidget;
import 'package:flutter/material.dart';

class ImagePickerModel extends FlutterFlowModel<ImagePickerWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
