// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_probability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CondtionProbability> _$condtionProbabilitySerializer =
    new _$CondtionProbabilitySerializer();

class _$CondtionProbabilitySerializer
    implements StructuredSerializer<CondtionProbability> {
  @override
  final Iterable<Type> types = const [
    CondtionProbability,
    _$CondtionProbability
  ];
  @override
  final String wireName = 'CondtionProbability';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CondtionProbability object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'probability',
      serializers.serialize(object.probability,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conditionDetails;
    if (value != null) {
      result
        ..add('condition_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ConditionDetails)));
    }
    return result;
  }

  @override
  CondtionProbability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CondtionProbabilityBuilder();

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
        case 'probability':
          result.probability = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'condition_details':
          result.conditionDetails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConditionDetails))!
              as ConditionDetails);
          break;
      }
    }

    return result.build();
  }
}

class _$CondtionProbability extends CondtionProbability {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;
  @override
  final double probability;
  @override
  final ConditionDetails? conditionDetails;

  factory _$CondtionProbability(
          [void Function(CondtionProbabilityBuilder)? updates]) =>
      (new CondtionProbabilityBuilder()..update(updates)).build();

  _$CondtionProbability._(
      {required this.id,
      required this.name,
      this.commonName,
      required this.probability,
      this.conditionDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CondtionProbability', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'CondtionProbability', 'name');
    BuiltValueNullFieldError.checkNotNull(
        probability, 'CondtionProbability', 'probability');
  }

  @override
  CondtionProbability rebuild(
          void Function(CondtionProbabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CondtionProbabilityBuilder toBuilder() =>
      new CondtionProbabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CondtionProbability &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        probability == other.probability &&
        conditionDetails == other.conditionDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), commonName.hashCode),
            probability.hashCode),
        conditionDetails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CondtionProbability')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('probability', probability)
          ..add('conditionDetails', conditionDetails))
        .toString();
  }
}

class CondtionProbabilityBuilder
    implements Builder<CondtionProbability, CondtionProbabilityBuilder> {
  _$CondtionProbability? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  double? _probability;
  double? get probability => _$this._probability;
  set probability(double? probability) => _$this._probability = probability;

  ConditionDetailsBuilder? _conditionDetails;
  ConditionDetailsBuilder get conditionDetails =>
      _$this._conditionDetails ??= new ConditionDetailsBuilder();
  set conditionDetails(ConditionDetailsBuilder? conditionDetails) =>
      _$this._conditionDetails = conditionDetails;

  CondtionProbabilityBuilder();

  CondtionProbabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _probability = $v.probability;
      _conditionDetails = $v.conditionDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CondtionProbability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CondtionProbability;
  }

  @override
  void update(void Function(CondtionProbabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CondtionProbability build() {
    _$CondtionProbability _$result;
    try {
      _$result = _$v ??
          new _$CondtionProbability._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'CondtionProbability', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'CondtionProbability', 'name'),
              commonName: commonName,
              probability: BuiltValueNullFieldError.checkNotNull(
                  probability, 'CondtionProbability', 'probability'),
              conditionDetails: _conditionDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conditionDetails';
        _conditionDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CondtionProbability', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
