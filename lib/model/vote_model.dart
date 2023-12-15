import 'package:freezed_annotation/freezed_annotation.dart';

// fvm flutter pub run build_runner build --delete-conflicting-outputs

part 'vote_model.freezed.dart';
part 'vote_model.g.dart';

@freezed
class VoteModel with _$VoteModel {
  const factory VoteModel({
    required String id,
    required String topic,
    required List<String> choices,
    required List<int> numOfChoices,
    @Default(false) bool isClosed,
  }) = _VoteModel;

  factory VoteModel.fromJson(Map<String, dynamic> json) =>
      _$VoteModelFromJson(json);
}
