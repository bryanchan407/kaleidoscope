import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<EcStruct> _athletics = [];
  List<EcStruct> get athletics => _athletics;
  set athletics(List<EcStruct> value) {
    _athletics = value;
  }

  void addToAthletics(EcStruct value) {
    athletics.add(value);
  }

  void removeFromAthletics(EcStruct value) {
    athletics.remove(value);
  }

  void removeAtIndexFromAthletics(int index) {
    athletics.removeAt(index);
  }

  void updateAthleticsAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    athletics[index] = updateFn(_athletics[index]);
  }

  void insertAtIndexInAthletics(int index, EcStruct value) {
    athletics.insert(index, value);
  }

  List<EcStruct> _awards = [];
  List<EcStruct> get awards => _awards;
  set awards(List<EcStruct> value) {
    _awards = value;
  }

  void addToAwards(EcStruct value) {
    awards.add(value);
  }

  void removeFromAwards(EcStruct value) {
    awards.remove(value);
  }

  void removeAtIndexFromAwards(int index) {
    awards.removeAt(index);
  }

  void updateAwardsAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    awards[index] = updateFn(_awards[index]);
  }

  void insertAtIndexInAwards(int index, EcStruct value) {
    awards.insert(index, value);
  }

  List<EcStruct> _classes = [];
  List<EcStruct> get classes => _classes;
  set classes(List<EcStruct> value) {
    _classes = value;
  }

  void addToClasses(EcStruct value) {
    classes.add(value);
  }

  void removeFromClasses(EcStruct value) {
    classes.remove(value);
  }

  void removeAtIndexFromClasses(int index) {
    classes.removeAt(index);
  }

  void updateClassesAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    classes[index] = updateFn(_classes[index]);
  }

  void insertAtIndexInClasses(int index, EcStruct value) {
    classes.insert(index, value);
  }

  List<EcStruct> _clubs = [];
  List<EcStruct> get clubs => _clubs;
  set clubs(List<EcStruct> value) {
    _clubs = value;
  }

  void addToClubs(EcStruct value) {
    clubs.add(value);
  }

  void removeFromClubs(EcStruct value) {
    clubs.remove(value);
  }

  void removeAtIndexFromClubs(int index) {
    clubs.removeAt(index);
  }

  void updateClubsAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    clubs[index] = updateFn(_clubs[index]);
  }

  void insertAtIndexInClubs(int index, EcStruct value) {
    clubs.insert(index, value);
  }

  List<EcStruct> _performingArts = [];
  List<EcStruct> get performingArts => _performingArts;
  set performingArts(List<EcStruct> value) {
    _performingArts = value;
  }

  void addToPerformingArts(EcStruct value) {
    performingArts.add(value);
  }

  void removeFromPerformingArts(EcStruct value) {
    performingArts.remove(value);
  }

  void removeAtIndexFromPerformingArts(int index) {
    performingArts.removeAt(index);
  }

  void updatePerformingArtsAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    performingArts[index] = updateFn(_performingArts[index]);
  }

  void insertAtIndexInPerformingArts(int index, EcStruct value) {
    performingArts.insert(index, value);
  }

  List<EcStruct> _communityService = [];
  List<EcStruct> get communityService => _communityService;
  set communityService(List<EcStruct> value) {
    _communityService = value;
  }

  void addToCommunityService(EcStruct value) {
    communityService.add(value);
  }

  void removeFromCommunityService(EcStruct value) {
    communityService.remove(value);
  }

  void removeAtIndexFromCommunityService(int index) {
    communityService.removeAt(index);
  }

  void updateCommunityServiceAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    communityService[index] = updateFn(_communityService[index]);
  }

  void insertAtIndexInCommunityService(int index, EcStruct value) {
    communityService.insert(index, value);
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  List<EcStruct> _personalProject = [];
  List<EcStruct> get personalProject => _personalProject;
  set personalProject(List<EcStruct> value) {
    _personalProject = value;
  }

  void addToPersonalProject(EcStruct value) {
    personalProject.add(value);
  }

  void removeFromPersonalProject(EcStruct value) {
    personalProject.remove(value);
  }

  void removeAtIndexFromPersonalProject(int index) {
    personalProject.removeAt(index);
  }

  void updatePersonalProjectAtIndex(
    int index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    personalProject[index] = updateFn(_personalProject[index]);
  }

  void insertAtIndexInPersonalProject(int index, EcStruct value) {
    personalProject.insert(index, value);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}
