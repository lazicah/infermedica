// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TriageResponse> _$triageResponseSerializer =
    new _$TriageResponseSerializer();

class _$TriageResponseSerializer
    implements StructuredSerializer<TriageResponse> {
  @override
  final Iterable<Type> types = const [TriageResponse, _$TriageResponse];
  @override
  final String wireName = 'TriageResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, TriageResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.triageLevel;
    if (value != null) {
      result
        ..add('triage_level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TriageLevel)));
    }
    value = object.serious;
    if (value != null) {
      result
        ..add('serious')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SeriousObservation)])));
    }
    value = object.rootCause;
    if (value != null) {
      result
        ..add('root_cause')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teleconsultationApplicable;
    if (value != null) {
      result
        ..add('teleconsultation_applicable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  TriageResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TriageResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'triage_level':
          result.triageLevel = serializers.deserialize(value,
              specifiedType: const FullType(TriageLevel)) as TriageLevel?;
          break;
        case 'serious':
          result.serious.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SeriousObservation)]))!
              as BuiltList<Object?>);
          break;
        case 'root_cause':
          result.rootCause = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teleconsultation_applicable':
          result.teleconsultationApplicable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$TriageResponse extends TriageResponse {
  @override
  final TriageLevel? triageLevel;
  @override
  final BuiltList<SeriousObservation>? serious;
  @override
  final String? rootCause;
  @override
  final bool? teleconsultationApplicable;

  factory _$TriageResponse([void Function(TriageResponseBuilder)? updates]) =>
      (new TriageResponseBuilder()..update(updates)).build();

  _$TriageResponse._(
      {this.triageLevel,
      this.serious,
      this.rootCause,
      this.teleconsultationApplicable})
      : super._();

  @override
  TriageResponse rebuild(void Function(TriageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TriageResponseBuilder toBuilder() =>
      new TriageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TriageResponse &&
        triageLevel == other.triageLevel &&
        serious == other.serious &&
        rootCause == other.rootCause &&
        teleconsultationApplicable == other.teleconsultationApplicable;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, triageLevel.hashCode), serious.hashCode),
            rootCause.hashCode),
        teleconsultationApplicable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TriageResponse')
          ..add('triageLevel', triageLevel)
          ..add('serious', serious)
          ..add('rootCause', rootCause)
          ..add('teleconsultationApplicable', teleconsultationApplicable))
        .toString();
  }
}

class TriageResponseBuilder
    implements Builder<TriageResponse, TriageResponseBuilder> {
  _$TriageResponse? _$v;

  TriageLevel? _triageLevel;
  TriageLevel? get triageLevel => _$this._triageLevel;
  set triageLevel(TriageLevel? triageLevel) =>
      _$this._triageLevel = triageLevel;

  ListBuilder<SeriousObservation>? _serious;
  ListBuilder<SeriousObservation> get serious =>
      _$this._serious ??= new ListBuilder<SeriousObservation>();
  set serious(ListBuilder<SeriousObservation>? serious) =>
      _$this._serious = serious;

  String? _rootCause;
  String? get rootCause => _$this._rootCause;
  set rootCause(String? rootCause) => _$this._rootCause = rootCause;

  bool? _teleconsultationApplicable;
  bool? get teleconsultationApplicable => _$this._teleconsultationApplicable;
  set teleconsultationApplicable(bool? teleconsultationApplicable) =>
      _$this._teleconsultationApplicable = teleconsultationApplicable;

  TriageResponseBuilder();

  TriageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triageLevel = $v.triageLevel;
      _serious = $v.serious?.toBuilder();
      _rootCause = $v.rootCause;
      _teleconsultationApplicable = $v.teleconsultationApplicable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TriageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TriageResponse;
  }

  @override
  void update(void Function(TriageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TriageResponse build() {
    _$TriageResponse _$result;
    try {
      _$result = _$v ??
          new _$TriageResponse._(
              triageLevel: triageLevel,
              serious: _serious?.build(),
              rootCause: rootCause,
              teleconsultationApplicable: teleconsultationApplicable);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serious';
        _serious?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TriageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
