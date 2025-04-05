import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    required String name,
    required TodaySchedule todaySchedule,
    required List<UpcomingSchedule> upcomingSchedules,
    required JoinedGroups joinedGroups,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@freezed
class TodaySchedule with _$TodaySchedule {
  const factory TodaySchedule({
    required int count,
    required List<String> groupNames,
  }) = _TodaySchedule;

  factory TodaySchedule.fromJson(Map<String, dynamic> json) =>
      _$TodayScheduleFromJson(json);
}

@freezed
class UpcomingSchedule with _$UpcomingSchedule {
  const factory UpcomingSchedule({
    required int id,
    required String title,
    required String memo,
    @JsonKey(name: 'start_datetime') required DateTime startDatetime,
    required String location,
    @JsonKey(name: 'seconds_left') required int secondsLeft,
  }) = _UpcomingSchedule;

  factory UpcomingSchedule.fromJson(Map<String, dynamic> json) =>
      _$UpcomingScheduleFromJson(json);
}

@freezed
class JoinedGroups with _$JoinedGroups {
  const factory JoinedGroups({
    required List<StudyGroup> study,
    required List<StudyGroup> club,
  }) = _JoinedGroups;

  factory JoinedGroups.fromJson(Map<String, dynamic> json) =>
      _$JoinedGroupsFromJson(json);
}

@freezed
class StudyGroup with _$StudyGroup {
  const factory StudyGroup({
    required int id,
    required String title,
    String? description,
    required String category,
    @JsonKey(name: 'max_members') required int maxMembers,
    @JsonKey(name: 'num_members') required int numMembers,
    String? attendance,
    String? meet,
    String? mood,
    String? thumbnail,
    bool? approve,
    String? field,
  }) = _StudyGroup;

  factory StudyGroup.fromJson(Map<String, dynamic> json) =>
      _$StudyGroupFromJson(json);
}
