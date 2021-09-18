// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialist_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpecialistResponse> _$specialistResponseSerializer =
    new _$SpecialistResponseSerializer();

class _$SpecialistResponseSerializer
    implements StructuredSerializer<SpecialistResponse> {
  @override
  final Iterable<Type> types = const [SpecialistResponse, _$SpecialistResponse];
  @override
  final String wireName = 'SpecialistResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SpecialistResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.recommendedSpecialist;
    if (value != null) {
      result
        ..add('recommended_specialist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(RecommendedSpecialist)));
    }
    value = object.recommendedChannel;
    if (value != null) {
      result
        ..add('recommended_channel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(RecommendedChannel)));
    }
    return result;
  }

  @override
  SpecialistResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpecialistResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'recommended_specialist':
          result.recommendedSpecialist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RecommendedSpecialist))!
              as RecommendedSpecialist);
          break;
        case 'recommended_channel':
          result.recommendedChannel = serializers.deserialize(value,
                  specifiedType: const FullType(RecommendedChannel))
              as RecommendedChannel?;
          break;
      }
    }

    return result.build();
  }
}

class _$SpecialistResponse extends SpecialistResponse {
  @override
  final RecommendedSpecialist? recommendedSpecialist;
  @override
  final RecommendedChannel? recommendedChannel;

  factory _$SpecialistResponse(
          [void Function(SpecialistResponseBuilder)? updates]) =>
      (new SpecialistResponseBuilder()..update(updates)).build();

  _$SpecialistResponse._({this.recommendedSpecialist, this.recommendedChannel})
      : super._();

  @override
  SpecialistResponse rebuild(
          void Function(SpecialistResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialistResponseBuilder toBuilder() =>
      new SpecialistResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialistResponse &&
        recommendedSpecialist == other.recommendedSpecialist &&
        recommendedChannel == other.recommendedChannel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, recommendedSpecialist.hashCode), recommendedChannel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpecialistResponse')
          ..add('recommendedSpecialist', recommendedSpecialist)
          ..add('recommendedChannel', recommendedChannel))
        .toString();
  }
}

class SpecialistResponseBuilder
    implements Builder<SpecialistResponse, SpecialistResponseBuilder> {
  _$SpecialistResponse? _$v;

  RecommendedSpecialistBuilder? _recommendedSpecialist;
  RecommendedSpecialistBuilder get recommendedSpecialist =>
      _$this._recommendedSpecialist ??= new RecommendedSpecialistBuilder();
  set recommendedSpecialist(
          RecommendedSpecialistBuilder? recommendedSpecialist) =>
      _$this._recommendedSpecialist = recommendedSpecialist;

  RecommendedChannel? _recommendedChannel;
  RecommendedChannel? get recommendedChannel => _$this._recommendedChannel;
  set recommendedChannel(RecommendedChannel? recommendedChannel) =>
      _$this._recommendedChannel = recommendedChannel;

  SpecialistResponseBuilder();

  SpecialistResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recommendedSpecialist = $v.recommendedSpecialist?.toBuilder();
      _recommendedChannel = $v.recommendedChannel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialistResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpecialistResponse;
  }

  @override
  void update(void Function(SpecialistResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpecialistResponse build() {
    _$SpecialistResponse _$result;
    try {
      _$result = _$v ??
          new _$SpecialistResponse._(
              recommendedSpecialist: _recommendedSpecialist?.build(),
              recommendedChannel: recommendedChannel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendedSpecialist';
        _recommendedSpecialist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SpecialistResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
