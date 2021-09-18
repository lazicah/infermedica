// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Evidence> _$evidenceSerializer = new _$EvidenceSerializer();

class _$EvidenceSerializer implements StructuredSerializer<Evidence> {
  @override
  final Iterable<Type> types = const [Evidence, _$Evidence];
  @override
  final String wireName = 'Evidence';

  @override
  Iterable<Object?> serialize(Serializers serializers, Evidence object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'choice_id',
      serializers.serialize(object.choiceId,
          specifiedType: const FullType(ChoiceId)),
    ];
    Object? value;
    value = object.observedAt;
    if (value != null) {
      result
        ..add('observed_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SourceType)));
    }
    return result;
  }

  @override
  Evidence deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EvidenceBuilder();

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
        case 'choice_id':
          result.choiceId = serializers.deserialize(value,
              specifiedType: const FullType(ChoiceId)) as ChoiceId;
          break;
        case 'observed_at':
          result.observedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(SourceType)) as SourceType?;
          break;
      }
    }

    return result.build();
  }
}

class _$Evidence extends Evidence {
  @override
  final String id;
  @override
  final ChoiceId choiceId;
  @override
  final String? observedAt;
  @override
  final SourceType? source;

  factory _$Evidence([void Function(EvidenceBuilder)? updates]) =>
      (new EvidenceBuilder()..update(updates)).build();

  _$Evidence._(
      {required this.id, required this.choiceId, this.observedAt, this.source})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Evidence', 'id');
    BuiltValueNullFieldError.checkNotNull(choiceId, 'Evidence', 'choiceId');
  }

  @override
  Evidence rebuild(void Function(EvidenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceBuilder toBuilder() => new EvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Evidence &&
        id == other.id &&
        choiceId == other.choiceId &&
        observedAt == other.observedAt &&
        source == other.source;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), choiceId.hashCode), observedAt.hashCode),
        source.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Evidence')
          ..add('id', id)
          ..add('choiceId', choiceId)
          ..add('observedAt', observedAt)
          ..add('source', source))
        .toString();
  }
}

class EvidenceBuilder implements Builder<Evidence, EvidenceBuilder> {
  _$Evidence? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ChoiceId? _choiceId;
  ChoiceId? get choiceId => _$this._choiceId;
  set choiceId(ChoiceId? choiceId) => _$this._choiceId = choiceId;

  String? _observedAt;
  String? get observedAt => _$this._observedAt;
  set observedAt(String? observedAt) => _$this._observedAt = observedAt;

  SourceType? _source;
  SourceType? get source => _$this._source;
  set source(SourceType? source) => _$this._source = source;

  EvidenceBuilder();

  EvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _choiceId = $v.choiceId;
      _observedAt = $v.observedAt;
      _source = $v.source;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Evidence other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Evidence;
  }

  @override
  void update(void Function(EvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Evidence build() {
    final _$result = _$v ??
        new _$Evidence._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Evidence', 'id'),
            choiceId: BuiltValueNullFieldError.checkNotNull(
                choiceId, 'Evidence', 'choiceId'),
            observedAt: observedAt,
            source: source);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
