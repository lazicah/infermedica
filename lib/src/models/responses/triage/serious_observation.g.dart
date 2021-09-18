// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serious_observation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeriousObservation> _$seriousObservationSerializer =
    new _$SeriousObservationSerializer();

class _$SeriousObservationSerializer
    implements StructuredSerializer<SeriousObservation> {
  @override
  final Iterable<Type> types = const [SeriousObservation, _$SeriousObservation];
  @override
  final String wireName = 'SeriousObservation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SeriousObservation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isEmergency;
    if (value != null) {
      result
        ..add('is_emergency')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  SeriousObservation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriousObservationBuilder();

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
        case 'is_emergency':
          result.isEmergency = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$SeriousObservation extends SeriousObservation {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;
  @override
  final bool? isEmergency;

  factory _$SeriousObservation(
          [void Function(SeriousObservationBuilder)? updates]) =>
      (new SeriousObservationBuilder()..update(updates)).build();

  _$SeriousObservation._(
      {required this.id, required this.name, this.commonName, this.isEmergency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'SeriousObservation', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'SeriousObservation', 'name');
  }

  @override
  SeriousObservation rebuild(
          void Function(SeriousObservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriousObservationBuilder toBuilder() =>
      new SeriousObservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriousObservation &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        isEmergency == other.isEmergency;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), commonName.hashCode),
        isEmergency.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeriousObservation')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('isEmergency', isEmergency))
        .toString();
  }
}

class SeriousObservationBuilder
    implements Builder<SeriousObservation, SeriousObservationBuilder> {
  _$SeriousObservation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  bool? _isEmergency;
  bool? get isEmergency => _$this._isEmergency;
  set isEmergency(bool? isEmergency) => _$this._isEmergency = isEmergency;

  SeriousObservationBuilder();

  SeriousObservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _isEmergency = $v.isEmergency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriousObservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriousObservation;
  }

  @override
  void update(void Function(SeriousObservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SeriousObservation build() {
    final _$result = _$v ??
        new _$SeriousObservation._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'SeriousObservation', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'SeriousObservation', 'name'),
            commonName: commonName,
            isEmergency: isEmergency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
