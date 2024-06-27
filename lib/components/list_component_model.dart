import '/flutter_flow/flutter_flow_util.dart';
import 'list_component_widget.dart' show ListComponentWidget;
import 'package:flutter/material.dart';

class ListComponentModel extends FlutterFlowModel<ListComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for subtitle widget.
  FocusNode? subtitleFocusNode;
  TextEditingController? subtitleTextController;
  String? Function(BuildContext, String?)? subtitleTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    subtitleFocusNode?.dispose();
    subtitleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
