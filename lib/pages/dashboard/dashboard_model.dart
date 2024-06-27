import '/backend/backend.dart';
import '/components/self_profile_element_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Dashboard widget.
  int? newChat;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for searchTextField widget.
  final searchTextFieldKey = GlobalKey();
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? searchTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  ChatsRecord? chatFiltered;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  ChatsRecord? chatFilteredSearch;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for SelfProfileElement component.
  late SelfProfileElementModel selfProfileElementModel;

  @override
  void initState(BuildContext context) {
    selfProfileElementModel =
        createModel(context, () => SelfProfileElementModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    searchTextFieldFocusNode?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    selfProfileElementModel.dispose();
  }
}
