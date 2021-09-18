// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explanation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExplanationResponse> _$explanationResponseSerializer =
    new _$ExplanationResponseSerializer();

class _$ExplanationResponseSerializer
    implements StructuredSerializer<ExplanationResponse> {
  @override
  final Iterable<Type> types = const [
    ExplanationResponse,
    _$ExplanationResponse
  ];
  @override
  final String wireName = 'ExplanationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExplanationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'supporting_evidence',
      serializers.serialize(object.supportingEvidence,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ExplanationEvidence)])),
      'conflicting_evidence',
      serializers.serialize(object.conflictingEvidence,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ExplanationEvidence)])),
      'unconfirmed_evidence',
      serializers.serialize(object.unconfirmedEvidence,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ExplanationEvidence)])),
    ];

    return result;
  }

  @override
  ExplanationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExplanationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'supporting_evidence':
          result.supportingEvidence.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExplanationEvidence)]))!
              as BuiltList<Object?>);
          break;
        case 'conflicting_evidence':
          result.conflictingEvidence.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExplanationEvidence)]))!
              as BuiltList<Object?>);
          break;
        case 'unconfirmed_evidence':
          result.unconfirmedEvidence.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExplanationEvidence)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ExplanationResponse extends ExplanationResponse {
  @override
  final BuiltList<ExplanationEvidence> supportingEvidence;
  @override
  final BuiltList<ExplanationEvidence> conflictingEvidence;
  @override
  final BuiltList<ExplanationEvidence> unconfirmedEvidence;

  factory _$ExplanationResponse(
          [void Function(ExplanationResponseBuilder)? updates]) =>
      (new ExplanationResponseBuilder()..update(updates)).build();

  _$ExplanationResponse._(
      {required this.supportingEvidence,
      required this.conflictingEvidence,
      required this.unconfirmedEvidence})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        supportingEvidence, 'ExplanationResponse', 'supportingEvidence');
    BuiltValueNullFieldError.checkNotNull(
        conflictingEvidence, 'ExplanationResponse', 'conflictingEvidence');
    BuiltValueNullFieldError.checkNotNull(
        unconfirmedEvidence, 'ExplanationResponse', 'unconfirmedEvidence');
  }

  @override
  ExplanationResponse rebuild(
          void Function(ExplanationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExplanationResponseBuilder toBuilder() =>
      new ExplanationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExplanationResponse &&
        supportingEvidence == other.supportingEvidence &&
        conflictingEvidence == other.conflictingEvidence &&
        unconfirmedEvidence == other.unconfirmedEvidence;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, supportingEvidence.hashCode), conflictingEvidence.hashCode),
        unconfirmedEvidence.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExplanationResponse')
          ..add('supportingEvidence', supportingEvidence)
          ..add('conflictingEvidence', conflictingEvidence)
          ..add('unconfirmedEvidence', unconfirmedEvidence))
        .toString();
  }
}

class ExplanationResponseBuilder
    implements Builder<ExplanationResponse, ExplanationResponseBuilder> {
  _$ExplanationResponse? _$v;

  ListBuilder<ExplanationEvidence>? _supportingEvidence;
  ListBuilder<ExplanationEvidence> get supportingEvidence =>
      _$this._supportingEvidence ??= new ListBuilder<ExplanationEvidence>();
  set supportingEvidence(
          ListBuilder<ExplanationEvidence>? supportingEvidence) =>
      _$this._supportingEvidence = supportingEvidence;

  ListBuilder<ExplanationEvidence>? _conflictingEvidence;
  ListBuilder<ExplanationEvidence> get conflictingEvidence =>
      _$this._conflictingEvidence ??= new ListBuilder<ExplanationEvidence>();
  set conflictingEvidence(
          ListBuilder<ExplanationEvidence>? conflictingEvidence) =>
      _$this._conflictingEvidence = conflictingEvidence;

  ListBuilder<ExplanationEvidence>? _unconfirmedEvidence;
  ListBuilder<ExplanationEvidence> get unconfirmedEvidence =>
      _$this._unconfirmedEvidence ??= new ListBuilder<ExplanationEvidence>();
  set unconfirmedEvidence(
          ListBuilder<ExplanationEvidence>? unconfirmedEvidence) =>
      _$this._unconfirmedEvidence = unconfirmedEvidence;

  ExplanationResponseBuilder();

  ExplanationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supportingEvidence = $v.supportingEvidence.toBuilder();
      _conflictingEvidence = $v.conflictingEvidence.toBuilder();
      _unconfirmedEvidence = $v.unconfirmedEvidence.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExplanationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExplanationResponse;
  }

  @override
  void update(void Function(ExplanationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExplanationResponse build() {
    _$ExplanationResponse _$result;
    try {
      _$result = _$v ??
          new _$ExplanationResponse._(
              supportingEvidence: supportingEvidence.build(),
              conflictingEvidence: conflictingEvidence.build(),
              unconfirmedEvidence: unconfirmedEvidence.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportingEvidence';
        supportingEvidence.build();
        _$failedField = 'conflictingEvidence';
        conflictingEvidence.build();
        _$failedField = 'unconfirmedEvidence';
        unconfirmedEvidence.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExplanationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
