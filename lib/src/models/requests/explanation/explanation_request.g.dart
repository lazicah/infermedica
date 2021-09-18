// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explanation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExplanationRequest> _$explanationRequestSerializer =
    new _$ExplanationRequestSerializer();

class _$ExplanationRequestSerializer
    implements StructuredSerializer<ExplanationRequest> {
  @override
  final Iterable<Type> types = const [ExplanationRequest, _$ExplanationRequest];
  @override
  final String wireName = 'ExplanationRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExplanationRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'sex',
      serializers.serialize(object.sex, specifiedType: const FullType(SexType)),
      'age',
      serializers.serialize(object.age,
          specifiedType: const FullType(AgeRequestModel)),
      'evidence',
      serializers.serialize(object.evidence,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Evidence)])),
      'target',
      serializers.serialize(object.target,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  ExplanationRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExplanationRequestBuilder();

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
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ExplanationRequest extends ExplanationRequest {
  @override
  final SexType sex;
  @override
  final AgeRequestModel age;
  @override
  final BuiltList<Evidence> evidence;
  @override
  final JsonObject? extras;
  @override
  final String target;
  @override
  final String? evaluatedAt;

  factory _$ExplanationRequest(
          [void Function(ExplanationRequestBuilder)? updates]) =>
      (new ExplanationRequestBuilder()..update(updates)).build();

  _$ExplanationRequest._(
      {required this.sex,
      required this.age,
      required this.evidence,
      this.extras,
      required this.target,
      this.evaluatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(sex, 'ExplanationRequest', 'sex');
    BuiltValueNullFieldError.checkNotNull(age, 'ExplanationRequest', 'age');
    BuiltValueNullFieldError.checkNotNull(
        evidence, 'ExplanationRequest', 'evidence');
    BuiltValueNullFieldError.checkNotNull(
        target, 'ExplanationRequest', 'target');
  }

  @override
  ExplanationRequest rebuild(
          void Function(ExplanationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExplanationRequestBuilder toBuilder() =>
      new ExplanationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExplanationRequest &&
        sex == other.sex &&
        age == other.age &&
        evidence == other.evidence &&
        extras == other.extras &&
        target == other.target &&
        evaluatedAt == other.evaluatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, sex.hashCode), age.hashCode), evidence.hashCode),
                extras.hashCode),
            target.hashCode),
        evaluatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExplanationRequest')
          ..add('sex', sex)
          ..add('age', age)
          ..add('evidence', evidence)
          ..add('extras', extras)
          ..add('target', target)
          ..add('evaluatedAt', evaluatedAt))
        .toString();
  }
}

class ExplanationRequestBuilder
    implements Builder<ExplanationRequest, ExplanationRequestBuilder> {
  _$ExplanationRequest? _$v;

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

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  String? _evaluatedAt;
  String? get evaluatedAt => _$this._evaluatedAt;
  set evaluatedAt(String? evaluatedAt) => _$this._evaluatedAt = evaluatedAt;

  ExplanationRequestBuilder();

  ExplanationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sex = $v.sex;
      _age = $v.age.toBuilder();
      _evidence = $v.evidence.toBuilder();
      _extras = $v.extras;
      _target = $v.target;
      _evaluatedAt = $v.evaluatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExplanationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExplanationRequest;
  }

  @override
  void update(void Function(ExplanationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExplanationRequest build() {
    _$ExplanationRequest _$result;
    try {
      _$result = _$v ??
          new _$ExplanationRequest._(
              sex: BuiltValueNullFieldError.checkNotNull(
                  sex, 'ExplanationRequest', 'sex'),
              age: age.build(),
              evidence: evidence.build(),
              extras: extras,
              target: BuiltValueNullFieldError.checkNotNull(
                  target, 'ExplanationRequest', 'target'),
              evaluatedAt: evaluatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'age';
        age.build();
        _$failedField = 'evidence';
        evidence.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExplanationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
