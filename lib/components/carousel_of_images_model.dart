import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carousel_of_images_widget.dart' show CarouselOfImagesWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselOfImagesModel extends FlutterFlowModel<CarouselOfImagesWidget> {
  ///  Local state fields for this component.

  EcStruct? currentEC;
  void updateCurrentECStruct(Function(EcStruct) updateFn) {
    updateFn(currentEC ??= EcStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
