// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiagnosisRequest> _$diagnosisRequestSerializer =
    new _$DiagnosisRequestSerializer();

class _$DiagnosisRequestSerializer
    implements StructuredSerializer<DiagnosisRequest> {
  @override
  final Iterable<Type> types = const [DiagnosisRequest, _$DiagnosisRequest];
  @override
  final String wireName = 'DiagnosisRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, DiagnosisRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'sex',
      serializers.serialize(object.sex, specifiedType: const FullType(SexType)),
      'age',
      serializers.serialize(object.age,
          specifiedType: const FullType(AgeRequestModel)),
    ];
    Object? value;
    value = object.evidence;
    if (value != null) {
      result
        ..add('evidence')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Evidence)])));
    }
    value = object.extras;
    if (value != null) {
      result
        ..add('extras')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JsonObject)));
    }
    value = object.evaluatedAt;
    if (value != null) {
      result
        ..add('evaluated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DiagnosisRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiagnosisRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(SexType)) as SexType;
          break;
        case 'age':
          result.age.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AgeRequestModel))!
              as AgeRequestModel);
          break;
        case 'evidence':
          result.evidence.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Evidence)]))!
              as BuiltList<Object?>);
          break;
        case 'extras':
          result.extras = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject?;
          break;
        case 'evaluated_at':
          result.evaluatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$DiagnosisRequest extends DiagnosisRequest {
  @override
  final SexType sex;
  @override
  final AgeRequestModel age;
  @override
  final BuiltList<Evidence>? evidence;
  @override
  final JsonObject? extras;
  @override
  final String? evaluatedAt;

  factory _$DiagnosisRequest(
          [void Function(DiagnosisRequestBuilder)? updates]) =>
      (new DiagnosisRequestBuilder()..update(updates)).build();

  _$DiagnosisRequest._(
      {required this.sex,
      required this.age,
      this.evidence,
      this.extras,
      this.evaluatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(sex, 'DiagnosisRequest', 'sex');
    BuiltValueNullFieldError.checkNotNull(age, 'DiagnosisRequest', 'age');
  }

  @override
  DiagnosisRequest rebuild(void Function(DiagnosisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiagnosisRequestBuilder toBuilder() =>
      new DiagnosisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiagnosisRequest &&
        sex == other.sex &&
        age == other.age &&
        evidence == other.evidence &&
        extras == other.extras &&
        evaluatedAt == other.evaluatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, sex.hashCode), age.hashCode), evidence.hashCode),
            extras.hashCode),
        evaluatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiagnosisRequest')
          ..add('sex', sex)
          ..add('age', age)
          ..add('evidence', evidence)
          ..add('extras', extras)
          ..add('evaluatedAt', evaluatedAt))
        .toString();
  }
}

class DiagnosisRequestBuilder
    implements Builder<DiagnosisRequest, DiagnosisRequestBuilder> {
  _$DiagnosisRequest? _$v;

  SexType? _sex;
  SexType? get sex => _$this._sex;
  set sex(SexType? sex) => _$this._sex = sex;

  AgeRequestModelBuilder? _age;
  AgeRequestModelBuilder get age =>
      _$this._age ??= new AgeRequestModelBuilder();
  set age(AgeRequestModelBuilder? age) => _$this._age = age;

  ListBuilder<Evidence>? _evidence;
  ListBuilder<Evidence> get evidence =>
      _$this._evidence ??= new ListBuilder<Evidence>();
  set evidence(ListBuilder<Evidence>? evidence) => _$this._evidence = evidence;

  JsonObject? _extras;
  JsonObject? get extras => _$this._extras;
  set extras(JsonObject? extras) => _$this._extras = extras;

  String? _evaluatedAt;
  String? get evaluatedAt => _$this._evaluatedAt;
  set evaluatedAt(String? evaluatedAt) => _$this._evaluatedAt = evaluatedAt;

  DiagnosisRequestBuilder();

  DiagnosisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sex = $v.sex;
      _age = $v.age.toBuilder();
      _evidence = $v.evidence?.toBuilder();
      _extras = $v.extras;
      _evaluatedAt = $v.evaluatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiagnosisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiagnosisRequest;
  }

  @override
  void update(void Function(DiagnosisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiagnosisRequest build() {
    _$DiagnosisRequest _$result;
    try {
      _$result = _$v ??
          new _$DiagnosisRequest._(
              sex: BuiltValueNullFieldError.checkNotNull(
                  sex, 'DiagnosisRequest', 'sex'),
              age: age.build(),
              evidence: _evidence?.build(),
              extras: extras,
              evaluatedAt: evaluatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'age';
        age.build();
        _$failedField = 'evidence';
        _evidence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiagnosisRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
