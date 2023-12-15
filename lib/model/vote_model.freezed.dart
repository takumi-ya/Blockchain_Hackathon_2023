// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoteModel _$VoteModelFromJson(Map<String, dynamic> json) {
  return _VoteModel.fromJson(json);
}

/// @nodoc
mixin _$VoteModel {
  String get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;
  List<int> get numOfChoices => throw _privateConstructorUsedError;
  bool get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteModelCopyWith<VoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteModelCopyWith<$Res> {
  factory $VoteModelCopyWith(VoteModel value, $Res Function(VoteModel) then) =
      _$VoteModelCopyWithImpl<$Res, VoteModel>;
  @useResult
  $Res call(
      {String id,
      String topic,
      List<String> choices,
      List<int> numOfChoices,
      bool isClosed});
}

/// @nodoc
class _$VoteModelCopyWithImpl<$Res, $Val extends VoteModel>
    implements $VoteModelCopyWith<$Res> {
  _$VoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? choices = null,
    Object? numOfChoices = null,
    Object? isClosed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      numOfChoices: null == numOfChoices
          ? _value.numOfChoices
          : numOfChoices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoteModelCopyWith<$Res> implements $VoteModelCopyWith<$Res> {
  factory _$$_VoteModelCopyWith(
          _$_VoteModel value, $Res Function(_$_VoteModel) then) =
      __$$_VoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String topic,
      List<String> choices,
      List<int> numOfChoices,
      bool isClosed});
}

/// @nodoc
class __$$_VoteModelCopyWithImpl<$Res>
    extends _$VoteModelCopyWithImpl<$Res, _$_VoteModel>
    implements _$$_VoteModelCopyWith<$Res> {
  __$$_VoteModelCopyWithImpl(
      _$_VoteModel _value, $Res Function(_$_VoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? choices = null,
    Object? numOfChoices = null,
    Object? isClosed = null,
  }) {
    return _then(_$_VoteModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      numOfChoices: null == numOfChoices
          ? _value._numOfChoices
          : numOfChoices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoteModel implements _VoteModel {
  const _$_VoteModel(
      {required this.id,
      required this.topic,
      required final List<String> choices,
      required final List<int> numOfChoices,
      this.isClosed = false})
      : _choices = choices,
        _numOfChoices = numOfChoices;

  factory _$_VoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_VoteModelFromJson(json);

  @override
  final String id;
  @override
  final String topic;
  final List<String> _choices;
  @override
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  final List<int> _numOfChoices;
  @override
  List<int> get numOfChoices {
    if (_numOfChoices is EqualUnmodifiableListView) return _numOfChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numOfChoices);
  }

  @override
  @JsonKey()
  final bool isClosed;

  @override
  String toString() {
    return 'VoteModel(id: $id, topic: $topic, choices: $choices, numOfChoices: $numOfChoices, isClosed: $isClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            const DeepCollectionEquality()
                .equals(other._numOfChoices, _numOfChoices) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topic,
      const DeepCollectionEquality().hash(_choices),
      const DeepCollectionEquality().hash(_numOfChoices),
      isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoteModelCopyWith<_$_VoteModel> get copyWith =>
      __$$_VoteModelCopyWithImpl<_$_VoteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoteModelToJson(
      this,
    );
  }
}

abstract class _VoteModel implements VoteModel {
  const factory _VoteModel(
      {required final String id,
      required final String topic,
      required final List<String> choices,
      required final List<int> numOfChoices,
      final bool isClosed}) = _$_VoteModel;

  factory _VoteModel.fromJson(Map<String, dynamic> json) =
      _$_VoteModel.fromJson;

  @override
  String get id;
  @override
  String get topic;
  @override
  List<String> get choices;
  @override
  List<int> get numOfChoices;
  @override
  bool get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$_VoteModelCopyWith<_$_VoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
