import '/flutter_flow/flutter_flow_util.dart';
import 'explore_card_widget.dart' show ExploreCardWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ExploreCardModel extends FlutterFlowModel<ExploreCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
