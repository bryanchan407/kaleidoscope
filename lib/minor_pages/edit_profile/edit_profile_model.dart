import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/big_daddy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.

  List<EcStruct> awards = [];
  void addToAwards(EcStruct item) => awards.add(item);
  void removeFromAwards(EcStruct item) => awards.remove(item);
  void removeAtIndexFromAwards(int index) => awards.removeAt(index);
  void insertAtIndexInAwards(int index, EcStruct item) =>
      awards.insert(index, item);
  void updateAwardsAtIndex(int index, Function(EcStruct) updateFn) =>
      awards[index] = updateFn(awards[index]);

  List<EcStruct> athletics = [];
  void addToAthletics(EcStruct item) => athletics.add(item);
  void removeFromAthletics(EcStruct item) => athletics.remove(item);
  void removeAtIndexFromAthletics(int index) => athletics.removeAt(index);
  void insertAtIndexInAthletics(int index, EcStruct item) =>
      athletics.insert(index, item);
  void updateAthleticsAtIndex(int index, Function(EcStruct) updateFn) =>
      athletics[index] = updateFn(athletics[index]);

  int currentList = 0;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for school widget.
  FocusNode? schoolFocusNode;
  TextEditingController? schoolTextController;
  String? Function(BuildContext, String?)? schoolTextControllerValidator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for major widget.
  FocusNode? majorFocusNode;
  TextEditingController? majorTextController;
  String? Function(BuildContext, String?)? majorTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for linkedinID widget.
  FocusNode? linkedinIDFocusNode;
  TextEditingController? linkedinIDTextController;
  String? Function(BuildContext, String?)? linkedinIDTextControllerValidator;
  // Model for BigDaddy component.
  late BigDaddyModel bigDaddyModel;

  @override
  void initState(BuildContext context) {
    bigDaddyModel = createModel(context, () => BigDaddyModel());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    schoolFocusNode?.dispose();
    schoolTextController?.dispose();

    majorFocusNode?.dispose();
    majorTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    linkedinIDFocusNode?.dispose();
    linkedinIDTextController?.dispose();

    bigDaddyModel.dispose();
  }
}
