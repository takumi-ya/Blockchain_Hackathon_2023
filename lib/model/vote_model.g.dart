// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VoteModel _$$_VoteModelFromJson(Map<String, dynamic> json) => _$_VoteModel(
      id: json['id'] as String,
      topic: json['topic'] as String,
      choices:
          (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
      numOfChoices:
          (json['numOfChoices'] as List<dynamic>).map((e) => e as int).toList(),
      isClosed: json['isClosed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VoteModelToJson(_$_VoteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'choices': instance.choices,
      'numOfChoices': instance.numOfChoices,
      'isClosed': instance.isClosed,
    };
