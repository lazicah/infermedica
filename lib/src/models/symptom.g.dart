// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Symptom> _$symptomSerializer = new _$SymptomSerializer();

class _$SymptomSerializer implements StructuredSerializer<Symptom> {
  @override
  final Iterable<Type> types = const [Symptom, _$Symptom];
  @override
  final String wireName = 'Symptom';

  @override
  Iterable<Object?> serialize(Serializers serializers, Symptom object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'sex_filter',
      serializers.serialize(object.sexFilter,
          specifiedType: const FullType(SexFilter)),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.extras;
    if (value != null) {
      result
        ..add('extras')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JsonObject)));
    }
    value = object.children;
    if (value != null) {
      result
        ..add('children')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JsonObject)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageSource;
    if (value != null) {
      result
        ..add('image_source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentId;
    if (value != null) {
      result
        ..add('parent_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentRelation;
    if (value != null) {
      result
        ..add('parent_relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Symptom deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SymptomBuilder();

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
        case 'sex_filter':
          result.sexFilter = serializers.deserialize(value,
              specifiedType: const FullType(SexFilter)) as SexFilter;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'extras':
          result.extras = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject?;
          break;
        case 'children':
          result.children = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject?;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_source':
          result.imageSource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parent_id':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parent_relation':
          result.parentRelation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Symptom extends Symptom {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;
  @override
  final SexFilter sexFilter;
  @override
  final String? category;
  @override
  final JsonObject? extras;
  @override
  final JsonObject? children;
  @override
  final String? imageUrl;
  @override
  final String? imageSource;
  @override
  final String? parentId;
  @override
  final String? parentRelation;

  factory _$Symptom([void Function(SymptomBuilder)? updates]) =>
      (new SymptomBuilder()..update(updates)).build();

  _$Symptom._(
      {required this.id,
      required this.name,
      this.commonName,
      required this.sexFilter,
      this.category,
      this.extras,
      this.children,
      this.imageUrl,
      this.imageSource,
      this.parentId,
      this.parentRelation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Symptom', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Symptom', 'name');
    BuiltValueNullFieldError.checkNotNull(sexFilter, 'Symptom', 'sexFilter');
  }

  @override
  Symptom rebuild(void Function(SymptomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymptomBuilder toBuilder() => new SymptomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Symptom &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        sexFilter == other.sexFilter &&
        category == other.category &&
        extras == other.extras &&
        children == other.children &&
        imageUrl == other.imageUrl &&
        imageSource == other.imageSource &&
        parentId == other.parentId &&
        parentRelation == other.parentRelation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                                        commonName.hashCode),
                                    sexFilter.hashCode),
                                category.hashCode),
                            extras.hashCode),
                        children.hashCode),
                    imageUrl.hashCode),
                imageSource.hashCode),
            parentId.hashCode),
        parentRelation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Symptom')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('sexFilter', sexFilter)
          ..add('category', category)
          ..add('extras', extras)
          ..add('children', children)
          ..add('imageUrl', imageUrl)
          ..add('imageSource', imageSource)
          ..add('parentId', parentId)
          ..add('parentRelation', parentRelation))
        .toString();
  }
}

class SymptomBuilder implements Builder<Symptom, SymptomBuilder> {
  _$Symptom? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  SexFilter? _sexFilter;
  SexFilter? get sexFilter => _$this._sexFilter;
  set sexFilter(SexFilter? sexFilter) => _$this._sexFilter = sexFilter;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  JsonObject? _extras;
  JsonObject? get extras => _$this._extras;
  set extras(JsonObject? extras) => _$this._extras = extras;

  JsonObject? _children;
  JsonObject? get children => _$this._children;
  set children(JsonObject? children) => _$this._children = children;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _imageSource;
  String? get imageSource => _$this._imageSource;
  set imageSource(String? imageSource) => _$this._imageSource = imageSource;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _parentRelation;
  String? get parentRelation => _$this._parentRelation;
  set parentRelation(String? parentRelation) =>
      _$this._parentRelation = parentRelation;

  SymptomBuilder();

  SymptomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _sexFilter = $v.sexFilter;
      _category = $v.category;
      _extras = $v.extras;
      _children = $v.children;
      _imageUrl = $v.imageUrl;
      _imageSource = $v.imageSource;
      _parentId = $v.parentId;
      _parentRelation = $v.parentRelation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Symptom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Symptom;
  }

  @override
  void update(void Function(SymptomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Symptom build() {
    final _$result = _$v ??
        new _$Symptom._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Symptom', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Symptom', 'name'),
            commonName: commonName,
            sexFilter: BuiltValueNullFieldError.checkNotNull(
                sexFilter, 'Symptom', 'sexFilter'),
            category: category,
            extras: extras,
            children: children,
            imageUrl: imageUrl,
            imageSource: imageSource,
            parentId: parentId,
            parentRelation: parentRelation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
