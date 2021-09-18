// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Info> _$infoSerializer = new _$InfoSerializer();

class _$InfoSerializer implements StructuredSerializer<Info> {
  @override
  final Iterable<Type> types = const [Info, _$Info];
  @override
  final String wireName = 'Info';

  @override
  Iterable<Object?> serialize(Serializers serializers, Info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'api_version',
      serializers.serialize(object.apiVersion,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'conditions_count',
      serializers.serialize(object.conditionsCount,
          specifiedType: const FullType(int)),
      'symptoms_count',
      serializers.serialize(object.symptomsCount,
          specifiedType: const FullType(int)),
      'risk_factors_count',
      serializers.serialize(object.riskFactorsCount,
          specifiedType: const FullType(int)),
      'lab_tests_count',
      serializers.serialize(object.labTestsCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Info deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'api_version':
          result.apiVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'conditions_count':
          result.conditionsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'symptoms_count':
          result.symptomsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'risk_factors_count':
          result.riskFactorsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lab_tests_count':
          result.labTestsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Info extends Info {
  @override
  final String apiVersion;
  @override
  final String updatedAt;
  @override
  final int conditionsCount;
  @override
  final int symptomsCount;
  @override
  final int riskFactorsCount;
  @override
  final int labTestsCount;

  factory _$Info([void Function(InfoBuilder)? updates]) =>
      (new InfoBuilder()..update(updates)).build();

  _$Info._(
      {required this.apiVersion,
      required this.updatedAt,
      required this.conditionsCount,
      required this.symptomsCount,
      required this.riskFactorsCount,
      required this.labTestsCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(apiVersion, 'Info', 'apiVersion');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'Info', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        conditionsCount, 'Info', 'conditionsCount');
    BuiltValueNullFieldError.checkNotNull(
        symptomsCount, 'Info', 'symptomsCount');
    BuiltValueNullFieldError.checkNotNull(
        riskFactorsCount, 'Info', 'riskFactorsCount');
    BuiltValueNullFieldError.checkNotNull(
        labTestsCount, 'Info', 'labTestsCount');
  }

  @override
  Info rebuild(void Function(InfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoBuilder toBuilder() => new InfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Info &&
        apiVersion == other.apiVersion &&
        updatedAt == other.updatedAt &&
        conditionsCount == other.conditionsCount &&
        symptomsCount == other.symptomsCount &&
        riskFactorsCount == other.riskFactorsCount &&
        labTestsCount == other.labTestsCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, apiVersion.hashCode), updatedAt.hashCode),
                    conditionsCount.hashCode),
                symptomsCount.hashCode),
            riskFactorsCount.hashCode),
        labTestsCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Info')
          ..add('apiVersion', apiVersion)
          ..add('updatedAt', updatedAt)
          ..add('conditionsCount', conditionsCount)
          ..add('symptomsCount', symptomsCount)
          ..add('riskFactorsCount', riskFactorsCount)
          ..add('labTestsCount', labTestsCount))
        .toString();
  }
}

class InfoBuilder implements Builder<Info, InfoBuilder> {
  _$Info? _$v;

  String? _apiVersion;
  String? get apiVersion => _$this._apiVersion;
  set apiVersion(String? apiVersion) => _$this._apiVersion = apiVersion;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  int? _conditionsCount;
  int? get conditionsCount => _$this._conditionsCount;
  set conditionsCount(int? conditionsCount) =>
      _$this._conditionsCount = conditionsCount;

  int? _symptomsCount;
  int? get symptomsCount => _$this._symptomsCount;
  set symptomsCount(int? symptomsCount) =>
      _$this._symptomsCount = symptomsCount;

  int? _riskFactorsCount;
  int? get riskFactorsCount => _$this._riskFactorsCount;
  set riskFactorsCount(int? riskFactorsCount) =>
      _$this._riskFactorsCount = riskFactorsCount;

  int? _labTestsCount;
  int? get labTestsCount => _$this._labTestsCount;
  set labTestsCount(int? labTestsCount) =>
      _$this._labTestsCount = labTestsCount;

  InfoBuilder();

  InfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiVersion = $v.apiVersion;
      _updatedAt = $v.updatedAt;
      _conditionsCount = $v.conditionsCount;
      _symptomsCount = $v.symptomsCount;
      _riskFactorsCount = $v.riskFactorsCount;
      _labTestsCount = $v.labTestsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Info;
  }

  @override
  void update(void Function(InfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Info build() {
    final _$result = _$v ??
        new _$Info._(
            apiVersion: BuiltValueNullFieldError.checkNotNull(
                apiVersion, 'Info', 'apiVersion'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, 'Info', 'updatedAt'),
            conditionsCount: BuiltValueNullFieldError.checkNotNull(
                conditionsCount, 'Info', 'conditionsCount'),
            symptomsCount: BuiltValueNullFieldError.checkNotNull(
                symptomsCount, 'Info', 'symptomsCount'),
            riskFactorsCount: BuiltValueNullFieldError.checkNotNull(
                riskFactorsCount, 'Info', 'riskFactorsCount'),
            labTestsCount: BuiltValueNullFieldError.checkNotNull(
                labTestsCount, 'Info', 'labTestsCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
