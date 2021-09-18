// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiagnosisResponse> _$diagnosisResponseSerializer =
    new _$DiagnosisResponseSerializer();

class _$DiagnosisResponseSerializer
    implements StructuredSerializer<DiagnosisResponse> {
  @override
  final Iterable<Type> types = const [DiagnosisResponse, _$DiagnosisResponse];
  @override
  final String wireName = 'DiagnosisResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, DiagnosisResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Question)));
    }
    value = object.conditions;
    if (value != null) {
      result
        ..add('conditions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CondtionProbability)])));
    }
    value = object.extras;
    if (value != null) {
      result
        ..add('extras')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JsonObject)));
    }
    value = object.hasEmergencyEvidence;
    if (value != null) {
      result
        ..add('has_emergency_evidence ')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.shouldStop;
    if (value != null) {
      result
        ..add('should_stop ')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  DiagnosisResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiagnosisResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question.replace(serializers.deserialize(value,
              specifiedType: const FullType(Question))! as Question);
          break;
        case 'conditions':
          result.conditions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CondtionProbability)]))!
              as BuiltList<Object?>);
          break;
        case 'extras':
          result.extras = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject?;
          break;
        case 'has_emergency_evidence ':
          result.hasEmergencyEvidence = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'should_stop ':
          result.shouldStop = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$DiagnosisResponse extends DiagnosisResponse {
  @override
  final Question? question;
  @override
  final BuiltList<CondtionProbability>? conditions;
  @override
  final JsonObject? extras;
  @override
  final bool? hasEmergencyEvidence;
  @override
  final bool? shouldStop;

  factory _$DiagnosisResponse(
          [void Function(DiagnosisResponseBuilder)? updates]) =>
      (new DiagnosisResponseBuilder()..update(updates)).build();

  _$DiagnosisResponse._(
      {this.question,
      this.conditions,
      this.extras,
      this.hasEmergencyEvidence,
      this.shouldStop})
      : super._();

  @override
  DiagnosisResponse rebuild(void Function(DiagnosisResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiagnosisResponseBuilder toBuilder() =>
      new DiagnosisResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiagnosisResponse &&
        question == other.question &&
        conditions == other.conditions &&
        extras == other.extras &&
        hasEmergencyEvidence == other.hasEmergencyEvidence &&
        shouldStop == other.shouldStop;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, question.hashCode), conditions.hashCode),
                extras.hashCode),
            hasEmergencyEvidence.hashCode),
        shouldStop.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiagnosisResponse')
          ..add('question', question)
          ..add('conditions', conditions)
          ..add('extras', extras)
          ..add('hasEmergencyEvidence', hasEmergencyEvidence)
          ..add('shouldStop', shouldStop))
        .toString();
  }
}

class DiagnosisResponseBuilder
    implements Builder<DiagnosisResponse, DiagnosisResponseBuilder> {
  _$DiagnosisResponse? _$v;

  QuestionBuilder? _question;
  QuestionBuilder get question => _$this._question ??= new QuestionBuilder();
  set question(QuestionBuilder? question) => _$this._question = question;

  ListBuilder<CondtionProbability>? _conditions;
  ListBuilder<CondtionProbability> get conditions =>
      _$this._conditions ??= new ListBuilder<CondtionProbability>();
  set conditions(ListBuilder<CondtionProbability>? conditions) =>
      _$this._conditions = conditions;

  JsonObject? _extras;
  JsonObject? get extras => _$this._extras;
  set extras(JsonObject? extras) => _$this._extras = extras;

  bool? _hasEmergencyEvidence;
  bool? get hasEmergencyEvidence => _$this._hasEmergencyEvidence;
  set hasEmergencyEvidence(bool? hasEmergencyEvidence) =>
      _$this._hasEmergencyEvidence = hasEmergencyEvidence;

  bool? _shouldStop;
  bool? get shouldStop => _$this._shouldStop;
  set shouldStop(bool? shouldStop) => _$this._shouldStop = shouldStop;

  DiagnosisResponseBuilder();

  DiagnosisResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question?.toBuilder();
      _conditions = $v.conditions?.toBuilder();
      _extras = $v.extras;
      _hasEmergencyEvidence = $v.hasEmergencyEvidence;
      _shouldStop = $v.shouldStop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiagnosisResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiagnosisResponse;
  }

  @override
  void update(void Function(DiagnosisResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiagnosisResponse build() {
    _$DiagnosisResponse _$result;
    try {
      _$result = _$v ??
          new _$DiagnosisResponse._(
              question: _question?.build(),
              conditions: _conditions?.build(),
              extras: extras,
              hasEmergencyEvidence: hasEmergencyEvidence,
              shouldStop: shouldStop);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'question';
        _question?.build();
        _$failedField = 'conditions';
        _conditions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiagnosisResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
