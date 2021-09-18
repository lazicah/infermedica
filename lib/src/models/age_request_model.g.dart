// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgeRequestModel> _$ageRequestModelSerializer =
    new _$AgeRequestModelSerializer();

class _$AgeRequestModelSerializer
    implements StructuredSerializer<AgeRequestModel> {
  @override
  final Iterable<Type> types = const [AgeRequestModel, _$AgeRequestModel];
  @override
  final String wireName = 'AgeRequestModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AgeRequestModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'value',
      serializers.serialize(object.value, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.unit;
    if (value != null) {
      result
        ..add('unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AgeUnit)));
    }
    return result;
  }

  @override
  AgeRequestModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgeRequestModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(AgeUnit)) as AgeUnit?;
          break;
      }
    }

    return result.build();
  }
}

class _$AgeRequestModel extends AgeRequestModel {
  @override
  final int value;
  @override
  final AgeUnit? unit;

  factory _$AgeRequestModel([void Function(AgeRequestModelBuilder)? updates]) =>
      (new AgeRequestModelBuilder()..update(updates)).build();

  _$AgeRequestModel._({required this.value, this.unit}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'AgeRequestModel', 'value');
  }

  @override
  AgeRequestModel rebuild(void Function(AgeRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgeRequestModelBuilder toBuilder() =>
      new AgeRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgeRequestModel &&
        value == other.value &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, value.hashCode), unit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AgeRequestModel')
          ..add('value', value)
          ..add('unit', unit))
        .toString();
  }
}

class AgeRequestModelBuilder
    implements Builder<AgeRequestModel, AgeRequestModelBuilder> {
  _$AgeRequestModel? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  AgeUnit? _unit;
  AgeUnit? get unit => _$this._unit;
  set unit(AgeUnit? unit) => _$this._unit = unit;

  AgeRequestModelBuilder();

  AgeRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgeRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgeRequestModel;
  }

  @override
  void update(void Function(AgeRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AgeRequestModel build() {
    final _$result = _$v ??
        new _$AgeRequestModel._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'AgeRequestModel', 'value'),
            unit: unit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
