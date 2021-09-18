// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_specialist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecommendedSpecialist> _$recommendedSpecialistSerializer =
    new _$RecommendedSpecialistSerializer();

class _$RecommendedSpecialistSerializer
    implements StructuredSerializer<RecommendedSpecialist> {
  @override
  final Iterable<Type> types = const [
    RecommendedSpecialist,
    _$RecommendedSpecialist
  ];
  @override
  final String wireName = 'RecommendedSpecialist';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RecommendedSpecialist object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RecommendedSpecialist deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecommendedSpecialistBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$RecommendedSpecialist extends RecommendedSpecialist {
  @override
  final String? id;
  @override
  final String? name;

  factory _$RecommendedSpecialist(
          [void Function(RecommendedSpecialistBuilder)? updates]) =>
      (new RecommendedSpecialistBuilder()..update(updates)).build();

  _$RecommendedSpecialist._({this.id, this.name}) : super._();

  @override
  RecommendedSpecialist rebuild(
          void Function(RecommendedSpecialistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendedSpecialistBuilder toBuilder() =>
      new RecommendedSpecialistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendedSpecialist &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecommendedSpecialist')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class RecommendedSpecialistBuilder
    implements Builder<RecommendedSpecialist, RecommendedSpecialistBuilder> {
  _$RecommendedSpecialist? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RecommendedSpecialistBuilder();

  RecommendedSpecialistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendedSpecialist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecommendedSpecialist;
  }

  @override
  void update(void Function(RecommendedSpecialistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecommendedSpecialist build() {
    final _$result = _$v ?? new _$RecommendedSpecialist._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
