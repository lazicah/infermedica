// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConceptItemModel> _$conceptItemModelSerializer =
    new _$ConceptItemModelSerializer();

class _$ConceptItemModelSerializer
    implements StructuredSerializer<ConceptItemModel> {
  @override
  final Iterable<Type> types = const [ConceptItemModel, _$ConceptItemModel];
  @override
  final String wireName = 'ConceptItemModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConceptItemModel object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ConceptItemType)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  ConceptItemModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConceptItemModelBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(ConceptItemType))
              as ConceptItemType?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ConceptItemModel extends ConceptItemModel {
  @override
  final String? id;
  @override
  final ConceptItemType? type;
  @override
  final String? name;
  @override
  final String? commonName;

  factory _$ConceptItemModel(
          [void Function(ConceptItemModelBuilder)? updates]) =>
      (new ConceptItemModelBuilder()..update(updates)).build();

  _$ConceptItemModel._({this.id, this.type, this.name, this.commonName})
      : super._();

  @override
  ConceptItemModel rebuild(void Function(ConceptItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConceptItemModelBuilder toBuilder() =>
      new ConceptItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConceptItemModel &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        commonName == other.commonName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), type.hashCode), name.hashCode),
        commonName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConceptItemModel')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('commonName', commonName))
        .toString();
  }
}

class ConceptItemModelBuilder
    implements Builder<ConceptItemModel, ConceptItemModelBuilder> {
  _$ConceptItemModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ConceptItemType? _type;
  ConceptItemType? get type => _$this._type;
  set type(ConceptItemType? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  ConceptItemModelBuilder();

  ConceptItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _name = $v.name;
      _commonName = $v.commonName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConceptItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConceptItemModel;
  }

  @override
  void update(void Function(ConceptItemModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConceptItemModel build() {
    final _$result = _$v ??
        new _$ConceptItemModel._(
            id: id, type: type, name: name, commonName: commonName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
