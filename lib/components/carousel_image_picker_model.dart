import '/flutter_flow/flutter_flow_util.dart';
import 'carousel_image_picker_widget.dart' show CarouselImagePickerWidget;
import 'package:flutter/material.dart';

class CarouselImagePickerModel
    extends FlutterFlowModel<CarouselImagePickerWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
