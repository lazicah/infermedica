// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rationale_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RationaleParam> _$rationaleParamSerializer =
    new _$RationaleParamSerializer();

class _$RationaleParamSerializer
    implements StructuredSerializer<RationaleParam> {
  @override
  final Iterable<Type> types = const [RationaleParam, _$RationaleParam];
  @override
  final String wireName = 'RationaleParam';

  @override
  Iterable<Object?> serialize(Serializers serializers, RationaleParam object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RationaleParam deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RationaleParamBuilder();

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
      }
    }

    return result.build();
  }
}

class _$RationaleParam extends RationaleParam {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;

  factory _$RationaleParam([void Function(RationaleParamBuilder)? updates]) =>
      (new RationaleParamBuilder()..update(updates)).build();

  _$RationaleParam._({required this.id, required this.name, this.commonName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RationaleParam', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'RationaleParam', 'name');
  }

  @override
  RationaleParam rebuild(void Function(RationaleParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RationaleParamBuilder toBuilder() =>
      new RationaleParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RationaleParam &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), commonName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RationaleParam')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName))
        .toString();
  }
}

class RationaleParamBuilder
    implements Builder<RationaleParam, RationaleParamBuilder> {
  _$RationaleParam? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  RationaleParamBuilder();

  RationaleParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RationaleParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RationaleParam;
  }

  @override
  void update(void Function(RationaleParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RationaleParam build() {
    final _$result = _$v ??
        new _$RationaleParam._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RationaleParam', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'RationaleParam', 'name'),
            commonName: commonName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
