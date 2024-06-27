import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_component_model.dart';
export 'list_component_model.dart';

class ListComponentWidget extends StatefulWidget {
  const ListComponentWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.index,
    required this.typeEC,
    required this.description,
  });

  final String? title;
  final String? subtitle;
  final int? index;
  final String? typeEC;
  final String? description;

  @override
  State<ListComponentWidget> createState() => _ListComponentWidgetState();
}

class _ListComponentWidgetState extends State<ListComponentWidget> {
  late ListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListComponentModel());

    _model.titleTextController ??= TextEditingController(text: widget.title);
    _model.titleFocusNode ??= FocusNode();
    _model.titleFocusNode!.addListener(
      () async {
        if (widget.typeEC == 'awards') {
          FFAppState().updateAwardsAtIndex(
            widget.index!,
            (e) => e..title = _model.titleTextController.text,
          );
          setState(() {});
        } else {
          if (widget.typeEC == 'athletics') {
            FFAppState().updateAthleticsAtIndex(
              widget.index!,
              (e) => e..title = _model.titleTextController.text,
            );
            setState(() {});
          } else {
            if (widget.typeEC == 'clubs') {
              FFAppState().updateClubsAtIndex(
                widget.index!,
                (e) => e..title = _model.titleTextController.text,
              );
              setState(() {});
            } else {
              if (widget.typeEC == 'classes') {
                FFAppState().updateClassesAtIndex(
                  widget.index!,
                  (e) => e..title = _model.titleTextController.text,
                );
                setState(() {});
              } else {
                if (widget.typeEC == 'performingArts') {
                  FFAppState().updatePerformingArtsAtIndex(
                    widget.index!,
                    (e) => e..title = _model.titleTextController.text,
                  );
                  setState(() {});
                } else {
                  if (widget.typeEC == 'communityService') {
                    FFAppState().updateCommunityServiceAtIndex(
                      widget.index!,
                      (e) => e..title = _model.titleTextController.text,
                    );
                    setState(() {});
                  } else {
                    if (widget.typeEC == 'personalProject') {
                      FFAppState().updatePersonalProjectAtIndex(
                        widget.index!,
                        (e) => e..title = _model.titleTextController.text,
                      );
                      setState(() {});
                    } else {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      },
    );
    _model.subtitleTextController ??=
        TextEditingController(text: widget.subtitle);
    _model.subtitleFocusNode ??= FocusNode();
    _model.subtitleFocusNode!.addListener(
      () async {
        if (widget.typeEC == 'awards') {
          FFAppState().updateAwardsAtIndex(
            widget.index!,
            (e) => e..subtitle = _model.subtitleTextController.text,
          );
          setState(() {});
        } else {
          if (widget.typeEC == 'athletics') {
            FFAppState().updateAthleticsAtIndex(
              widget.index!,
              (e) => e..subtitle = _model.subtitleTextController.text,
            );
            setState(() {});
          } else {
            if (widget.typeEC == 'clubs') {
              FFAppState().updateClubsAtIndex(
                widget.index!,
                (e) => e..subtitle = _model.subtitleTextController.text,
              );
              setState(() {});
            } else {
              if (widget.typeEC == 'classes') {
                FFAppState().updateClassesAtIndex(
                  widget.index!,
                  (e) => e..subtitle = _model.subtitleTextController.text,
                );
                setState(() {});
              } else {
                if (widget.typeEC == 'performingArts') {
                  FFAppState().updatePerformingArtsAtIndex(
                    widget.index!,
                    (e) => e..subtitle = _model.subtitleTextController.text,
                  );
                  setState(() {});
                } else {
                  if (widget.typeEC == 'communityService') {
                    FFAppState().updateCommunityServiceAtIndex(
                      widget.index!,
                      (e) => e..subtitle = _model.subtitleTextController.text,
                    );
                    setState(() {});
                  } else {
                    if (widget.typeEC == 'personalProject') {
                      FFAppState().updatePersonalProjectAtIndex(
                        widget.index!,
                        (e) => e..subtitle = _model.subtitleTextController.text,
                      );
                      setState(() {});
                    } else {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      },
    );
    _model.descriptionTextController ??=
        TextEditingController(text: widget.description);
    _model.descriptionFocusNode ??= FocusNode();
    _model.descriptionFocusNode!.addListener(
      () async {
        if (widget.typeEC == 'awards') {
          FFAppState().updateAwardsAtIndex(
            widget.index!,
            (e) => e..description = _model.descriptionTextController.text,
          );
          setState(() {});
        } else {
          if (widget.typeEC == 'athletics') {
            FFAppState().updateAthleticsAtIndex(
              widget.index!,
              (e) => e..description = _model.descriptionTextController.text,
            );
            setState(() {});
          } else {
            if (widget.typeEC == 'clubs') {
              FFAppState().updateClubsAtIndex(
                widget.index!,
                (e) => e..description = _model.descriptionTextController.text,
              );
              setState(() {});
            } else {
              if (widget.typeEC == 'classes') {
                FFAppState().updateClassesAtIndex(
                  widget.index!,
                  (e) => e..description = _model.descriptionTextController.text,
                );
                setState(() {});
              } else {
                if (widget.typeEC == 'performingArts') {
                  FFAppState().updatePerformingArtsAtIndex(
                    widget.index!,
                    (e) =>
                        e..description = _model.descriptionTextController.text,
                  );
                  setState(() {});
                } else {
                  if (widget.typeEC == 'communityService') {
                    FFAppState().updateCommunityServiceAtIndex(
                      widget.index!,
                      (e) => e
                        ..description = _model.descriptionTextController.text,
                    );
                    setState(() {});
                  } else {
                    if (widget.typeEC == 'personalProject') {
                      FFAppState().updatePersonalProjectAtIndex(
                        widget.index!,
                        (e) => e
                          ..description = _model.descriptionTextController.text,
                      );
                      setState(() {});
                    } else {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 200.0,
            decoration: const BoxDecoration(),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _model.titleTextController,
                focusNode: _model.titleFocusNode,
                autofocus: true,
                textInputAction: TextInputAction.done,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                maxLines: null,
                validator:
                    _model.titleTextControllerValidator.asValidator(context),
              ),
            ),
          ),
          Container(
            width: 200.0,
            decoration: const BoxDecoration(),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _model.subtitleTextController,
                focusNode: _model.subtitleFocusNode,
                autofocus: true,
                textInputAction: TextInputAction.done,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Subtitle',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
                maxLines: null,
                validator:
                    _model.subtitleTextControllerValidator.asValidator(context),
              ),
            ),
          ),
          Container(
            width: 200.0,
            decoration: const BoxDecoration(),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _model.descriptionTextController,
                focusNode: _model.descriptionFocusNode,
                autofocus: true,
                textInputAction: TextInputAction.done,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
                maxLines: null,
                validator: _model.descriptionTextControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
