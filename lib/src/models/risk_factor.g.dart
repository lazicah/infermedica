// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_factor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RiskFactor> _$riskFactorSerializer = new _$RiskFactorSerializer();

class _$RiskFactorSerializer implements StructuredSerializer<RiskFactor> {
  @override
  final Iterable<Type> types = const [RiskFactor, _$RiskFactor];
  @override
  final String wireName = 'RiskFactor';

  @override
  Iterable<Object?> serialize(Serializers serializers, RiskFactor object,
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
    return result;
  }

  @override
  RiskFactor deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RiskFactorBuilder();

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
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_source':
          result.imageSource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$RiskFactor extends RiskFactor {
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
  final String? imageUrl;
  @override
  final String? imageSource;

  factory _$RiskFactor([void Function(RiskFactorBuilder)? updates]) =>
      (new RiskFactorBuilder()..update(updates)).build();

  _$RiskFactor._(
      {required this.id,
      required this.name,
      this.commonName,
      required this.sexFilter,
      this.category,
      this.extras,
      this.imageUrl,
      this.imageSource})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RiskFactor', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'RiskFactor', 'name');
    BuiltValueNullFieldError.checkNotNull(sexFilter, 'RiskFactor', 'sexFilter');
  }

  @override
  RiskFactor rebuild(void Function(RiskFactorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RiskFactorBuilder toBuilder() => new RiskFactorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RiskFactor &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        sexFilter == other.sexFilter &&
        category == other.category &&
        extras == other.extras &&
        imageUrl == other.imageUrl &&
        imageSource == other.imageSource;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            commonName.hashCode),
                        sexFilter.hashCode),
                    category.hashCode),
                extras.hashCode),
            imageUrl.hashCode),
        imageSource.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RiskFactor')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('sexFilter', sexFilter)
          ..add('category', category)
          ..add('extras', extras)
          ..add('imageUrl', imageUrl)
          ..add('imageSource', imageSource))
        .toString();
  }
}

class RiskFactorBuilder implements Builder<RiskFactor, RiskFactorBuilder> {
  _$RiskFactor? _$v;

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

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _imageSource;
  String? get imageSource => _$this._imageSource;
  set imageSource(String? imageSource) => _$this._imageSource = imageSource;

  RiskFactorBuilder();

  RiskFactorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _sexFilter = $v.sexFilter;
      _category = $v.category;
      _extras = $v.extras;
      _imageUrl = $v.imageUrl;
      _imageSource = $v.imageSource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RiskFactor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RiskFactor;
  }

  @override
  void update(void Function(RiskFactorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RiskFactor build() {
    final _$result = _$v ??
        new _$RiskFactor._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'RiskFactor', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'RiskFactor', 'name'),
            commonName: commonName,
            sexFilter: BuiltValueNullFieldError.checkNotNull(
                sexFilter, 'RiskFactor', 'sexFilter'),
            category: category,
            extras: extras,
            imageUrl: imageUrl,
            imageSource: imageSource);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
