// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rationale_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RationaleResponse> _$rationaleResponseSerializer =
    new _$RationaleResponseSerializer();

class _$RationaleResponseSerializer
    implements StructuredSerializer<RationaleResponse> {
  @override
  final Iterable<Type> types = const [RationaleResponse, _$RationaleResponse];
  @override
  final String wireName = 'RationaleResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, RationaleResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(RationaleType)),
    ];
    Object? value;
    value = object.observationParams;
    if (value != null) {
      result
        ..add('observation_params')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RationaleParam)])));
    }
    value = object.conditionParams;
    if (value != null) {
      result
        ..add('condition_params')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RationaleParam)])));
    }
    return result;
  }

  @override
  RationaleResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RationaleResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(RationaleType)) as RationaleType;
          break;
        case 'observation_params':
          result.observationParams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RationaleParam)]))!
              as BuiltList<Object?>);
          break;
        case 'condition_params':
          result.conditionParams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RationaleParam)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$RationaleResponse extends RationaleResponse {
  @override
  final RationaleType type;
  @override
  final BuiltList<RationaleParam>? observationParams;
  @override
  final BuiltList<RationaleParam>? conditionParams;

  factory _$RationaleResponse(
          [void Function(RationaleResponseBuilder)? updates]) =>
      (new RationaleResponseBuilder()..update(updates)).build();

  _$RationaleResponse._(
      {required this.type, this.observationParams, this.conditionParams})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'RationaleResponse', 'type');
  }

  @override
  RationaleResponse rebuild(void Function(RationaleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RationaleResponseBuilder toBuilder() =>
      new RationaleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RationaleResponse &&
        type == other.type &&
        observationParams == other.observationParams &&
        conditionParams == other.conditionParams;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, type.hashCode), observationParams.hashCode),
        conditionParams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RationaleResponse')
          ..add('type', type)
          ..add('observationParams', observationParams)
          ..add('conditionParams', conditionParams))
        .toString();
  }
}

class RationaleResponseBuilder
    implements Builder<RationaleResponse, RationaleResponseBuilder> {
  _$RationaleResponse? _$v;

  RationaleType? _type;
  RationaleType? get type => _$this._type;
  set type(RationaleType? type) => _$this._type = type;

  ListBuilder<RationaleParam>? _observationParams;
  ListBuilder<RationaleParam> get observationParams =>
      _$this._observationParams ??= new ListBuilder<RationaleParam>();
  set observationParams(ListBuilder<RationaleParam>? observationParams) =>
      _$this._observationParams = observationParams;

  ListBuilder<RationaleParam>? _conditionParams;
  ListBuilder<RationaleParam> get conditionParams =>
      _$this._conditionParams ??= new ListBuilder<RationaleParam>();
  set conditionParams(ListBuilder<RationaleParam>? conditionParams) =>
      _$this._conditionParams = conditionParams;

  RationaleResponseBuilder();

  RationaleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _observationParams = $v.observationParams?.toBuilder();
      _conditionParams = $v.conditionParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RationaleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RationaleResponse;
  }

  @override
  void update(void Function(RationaleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RationaleResponse build() {
    _$RationaleResponse _$result;
    try {
      _$result = _$v ??
          new _$RationaleResponse._(
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'RationaleResponse', 'type'),
              observationParams: _observationParams?.build(),
              conditionParams: _conditionParams?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'observationParams';
        _observationParams?.build();
        _$failedField = 'conditionParams';
        _conditionParams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RationaleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
