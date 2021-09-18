// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_mention.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ObservationMention> _$observationMentionSerializer =
    new _$ObservationMentionSerializer();

class _$ObservationMentionSerializer
    implements StructuredSerializer<ObservationMention> {
  @override
  final Iterable<Type> types = const [ObservationMention, _$ObservationMention];
  @override
  final String wireName = 'ObservationMention';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ObservationMention object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'orth',
      serializers.serialize(object.orth, specifiedType: const FullType(String)),
      'choice_id',
      serializers.serialize(object.choiceId,
          specifiedType: const FullType(ChoiceId)),
      'head_position',
      serializers.serialize(object.headPosition,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.positions;
    if (value != null) {
      result
        ..add('positions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  ObservationMention deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ObservationMentionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'common_name':
          result.commonName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'positions':
          result.positions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'orth':
          result.orth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'choice_id':
          result.choiceId = serializers.deserialize(value,
              specifiedType: const FullType(ChoiceId)) as ChoiceId;
          break;
        case 'head_position':
          result.headPosition = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ObservationMention extends ObservationMention {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;
  @override
  final BuiltList<int>? positions;
  @override
  final String orth;
  @override
  final ChoiceId choiceId;
  @override
  final int headPosition;

  factory _$ObservationMention(
          [void Function(ObservationMentionBuilder)? updates]) =>
      (new ObservationMentionBuilder()..update(updates)).build();

  _$ObservationMention._(
      {required this.id,
      required this.name,
      this.commonName,
      this.positions,
      required this.orth,
      required this.choiceId,
      required this.headPosition})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ObservationMention', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'ObservationMention', 'name');
    BuiltValueNullFieldError.checkNotNull(orth, 'ObservationMention', 'orth');
    BuiltValueNullFieldError.checkNotNull(
        choiceId, 'ObservationMention', 'choiceId');
    BuiltValueNullFieldError.checkNotNull(
        headPosition, 'ObservationMention', 'headPosition');
  }

  @override
  ObservationMention rebuild(
          void Function(ObservationMentionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObservationMentionBuilder toBuilder() =>
      new ObservationMentionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObservationMention &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        positions == other.positions &&
        orth == other.orth &&
        choiceId == other.choiceId &&
        headPosition == other.headPosition;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        commonName.hashCode),
                    positions.hashCode),
                orth.hashCode),
            choiceId.hashCode),
        headPosition.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ObservationMention')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('positions', positions)
          ..add('orth', orth)
          ..add('choiceId', choiceId)
          ..add('headPosition', headPosition))
        .toString();
  }
}

class ObservationMentionBuilder
    implements Builder<ObservationMention, ObservationMentionBuilder> {
  _$ObservationMention? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  ListBuilder<int>? _positions;
  ListBuilder<int> get positions =>
      _$this._positions ??= new ListBuilder<int>();
  set positions(ListBuilder<int>? positions) => _$this._positions = positions;

  String? _orth;
  String? get orth => _$this._orth;
  set orth(String? orth) => _$this._orth = orth;

  ChoiceId? _choiceId;
  ChoiceId? get choiceId => _$this._choiceId;
  set choiceId(ChoiceId? choiceId) => _$this._choiceId = choiceId;

  int? _headPosition;
  int? get headPosition => _$this._headPosition;
  set headPosition(int? headPosition) => _$this._headPosition = headPosition;

  ObservationMentionBuilder();

  ObservationMentionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _positions = $v.positions?.toBuilder();
      _orth = $v.orth;
      _choiceId = $v.choiceId;
      _headPosition = $v.headPosition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObservationMention other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObservationMention;
  }

  @override
  void update(void Function(ObservationMentionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ObservationMention build() {
    _$ObservationMention _$result;
    try {
      _$result = _$v ??
          new _$ObservationMention._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'ObservationMention', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'ObservationMention', 'name'),
              commonName: commonName,
              positions: _positions?.build(),
              orth: BuiltValueNullFieldError.checkNotNull(
                  orth, 'ObservationMention', 'orth'),
              choiceId: BuiltValueNullFieldError.checkNotNull(
                  choiceId, 'ObservationMention', 'choiceId'),
              headPosition: BuiltValueNullFieldError.checkNotNull(
                  headPosition, 'ObservationMention', 'headPosition'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'positions';
        _positions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ObservationMention', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
