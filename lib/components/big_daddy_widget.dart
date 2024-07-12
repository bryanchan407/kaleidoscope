import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/components/carousel_image_picker_widget.dart';
import '/components/carousel_of_images_widget.dart';
import '/components/image_picker_widget.dart';
import '/components/list_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'big_daddy_model.dart';
export 'big_daddy_model.dart';

class BigDaddyWidget extends StatefulWidget {
  const BigDaddyWidget({super.key});

  @override
  State<BigDaddyWidget> createState() => _BigDaddyWidgetState();
}

class _BigDaddyWidgetState extends State<BigDaddyWidget> {
  late BigDaddyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BigDaddyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().awards = (currentUserDocument?.awards.toList() ?? [])
          .toList()
          .cast<EcStruct>();
      FFAppState().athletics = (currentUserDocument?.athletics.toList() ?? [])
          .toList()
          .cast<EcStruct>();
      FFAppState().classes = (currentUserDocument?.classes.toList() ?? [])
          .toList()
          .cast<EcStruct>();
      FFAppState().clubs = (currentUserDocument?.clubs.toList() ?? [])
          .toList()
          .cast<EcStruct>();
      FFAppState().performingArts =
          (currentUserDocument?.performingArts.toList() ?? [])
              .toList()
              .cast<EcStruct>();
      FFAppState().communityService =
          (currentUserDocument?.communityService.toList() ?? [])
              .toList()
              .cast<EcStruct>();
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 700.0,
      decoration: const BoxDecoration(),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: PageView(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState()
                                          .addToPersonalProject(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Personal Projects',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .personalProject
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ListComponentWidget(
                                              key: Key(
                                                  'Keyvgh_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'personalProject',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromPersonalProject(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                                CarouselImagePickerWidget(
                                                  key: Key(
                                                      'Keybgs_${generateIndex}_of_${generate.length}'),
                                                  index: generateIndex,
                                                  typeEC: 'personalProject',
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        if (!(generateItem.gallery.isNotEmpty)
                                            ? false
                                            : true)
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: CarouselOfImagesWidget(
                                              key: Key(
                                                  'Keyy9r_${generateIndex}_of_${generate.length}'),
                                              index: generateIndex,
                                              ec: generateItem,
                                            ),
                                          ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState().addToAwards(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Awards',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .awards
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                ImagePickerWidget(
                                                  key: Key(
                                                      'Keynna_${generateIndex}_of_${generate.length}'),
                                                  imagePathInitial: FFAppState()
                                                      .awards[generateIndex]
                                                      .photoUrl,
                                                  index: generateIndex,
                                                  typeEC: 'awards',
                                                ),
                                              ],
                                            ),
                                            ListComponentWidget(
                                              key: Key(
                                                  'Keydam_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'awards',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromAwards(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState().addToAthletics(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Athletics',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .athletics
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                ImagePickerWidget(
                                                  key: Key(
                                                      'Keyz8i_${generateIndex}_of_${generate.length}'),
                                                  imagePathInitial: FFAppState()
                                                      .athletics[generateIndex]
                                                      .photoUrl,
                                                  index: generateIndex,
                                                  typeEC: 'athletics',
                                                ),
                                              ],
                                            ),
                                            ListComponentWidget(
                                              key: Key(
                                                  'Key830_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'athletics',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromAthletics(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState().addToClasses(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Classes',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .classes
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                ImagePickerWidget(
                                                  key: Key(
                                                      'Keyhrn_${generateIndex}_of_${generate.length}'),
                                                  imagePathInitial: FFAppState()
                                                      .classes[generateIndex]
                                                      .photoUrl,
                                                  index: generateIndex,
                                                  typeEC: 'classes',
                                                ),
                                              ],
                                            ),
                                            ListComponentWidget(
                                              key: Key(
                                                  'Keyy7v_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'classes',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromClasses(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState().addToClubs(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Clubs & Organizations',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .clubs
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                ImagePickerWidget(
                                                  key: Key(
                                                      'Keyf0n_${generateIndex}_of_${generate.length}'),
                                                  imagePathInitial: FFAppState()
                                                      .clubs[generateIndex]
                                                      .photoUrl,
                                                  index: generateIndex,
                                                  typeEC: 'clubs',
                                                ),
                                              ],
                                            ),
                                            ListComponentWidget(
                                              key: Key(
                                                  'Keynf1_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'clubs',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromClubs(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState()
                                          .addToCommunityService(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Community Service',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .communityService
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                ImagePickerWidget(
                                                  key: Key(
                                                      'Key48b_${generateIndex}_of_${generate.length}'),
                                                  imagePathInitial: FFAppState()
                                                      .communityService[
                                                          generateIndex]
                                                      .photoUrl,
                                                  index: generateIndex,
                                                  typeEC: 'communityService',
                                                ),
                                              ],
                                            ),
                                            ListComponentWidget(
                                              key: Key(
                                                  'Key1h9_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'communityService',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromCommunityService(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 0.25,
                                children: [
                                  SlidableAction(
                                    label: 'Add',
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                    icon: Icons.add,
                                    onPressed: (_) async {
                                      FFAppState()
                                          .addToPerformingArts(EcStruct());
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Performing Arts',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'Swipe to add',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final generate = FFAppState()
                                    .performingArts
                                    .toList()
                                    .take(10)
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(generate.length,
                                      (generateIndex) {
                                    final generateItem =
                                        generate[generateIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                ImagePickerWidget(
                                                  key: Key(
                                                      'Keybdk_${generateIndex}_of_${generate.length}'),
                                                  imagePathInitial: FFAppState()
                                                      .performingArts[
                                                          generateIndex]
                                                      .photoUrl,
                                                  index: generateIndex,
                                                  typeEC: 'performingArts',
                                                ),
                                              ],
                                            ),
                                            ListComponentWidget(
                                              key: Key(
                                                  'Keyoq0_${generateIndex}_of_${generate.length}'),
                                              title: generateItem.title,
                                              subtitle: generateItem.subtitle,
                                              index: generateIndex,
                                              typeEC: 'performingArts',
                                              description:
                                                  generateItem.description,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 8.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromCommunityService(
                                                              generateIndex);
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                child: smooth_page_indicator.SmoothPageIndicator(
                  controller: _model.pageViewController ??=
                      PageController(initialPage: 0),
                  count: 7,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) async {
                    await _model.pageViewController!.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                    setState(() {});
                  },
                  effect: smooth_page_indicator.ExpandingDotsEffect(
                    expansionFactor: 3.0,
                    spacing: 8.0,
                    radius: 16.0,
                    dotWidth: 16.0,
                    dotHeight: 8.0,
                    dotColor: FlutterFlowTheme.of(context).accent1,
                    activeDotColor: FlutterFlowTheme.of(context).primary,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
