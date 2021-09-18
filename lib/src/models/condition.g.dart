// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Condition> _$conditionSerializer = new _$ConditionSerializer();

class _$ConditionSerializer implements StructuredSerializer<Condition> {
  @override
  final Iterable<Type> types = const [Condition, _$Condition];
  @override
  final String wireName = 'Condition';

  @override
  Iterable<Object?> serialize(Serializers serializers, Condition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'sex_filter',
      serializers.serialize(object.sexFilter,
          specifiedType: const FullType(SexFilter)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prevalence;
    if (value != null) {
      result
        ..add('prevalence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Prevalence)));
    }
    value = object.acuteness;
    if (value != null) {
      result
        ..add('acuteness')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Acuteness)));
    }
    value = object.severity;
    if (value != null) {
      result
        ..add('severity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Severity)));
    }
    value = object.extras;
    if (value != null) {
      result
        ..add('extras')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JsonObject)));
    }
    value = object.triageLevel;
    if (value != null) {
      result
        ..add('triage_level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TriageLevel)));
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
  Condition deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConditionBuilder();

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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'prevalence':
          result.prevalence = serializers.deserialize(value,
              specifiedType: const FullType(Prevalence)) as Prevalence?;
          break;
        case 'acuteness':
          result.acuteness = serializers.deserialize(value,
              specifiedType: const FullType(Acuteness)) as Acuteness?;
          break;
        case 'severity':
          result.severity = serializers.deserialize(value,
              specifiedType: const FullType(Severity)) as Severity?;
          break;
        case 'extras':
          result.extras = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject?;
          break;
        case 'triage_level':
          result.triageLevel = serializers.deserialize(value,
              specifiedType: const FullType(TriageLevel)) as TriageLevel?;
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

class _$Condition extends Condition {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;
  @override
  final SexFilter sexFilter;
  @override
  final BuiltList<String> categories;
  @override
  final Prevalence? prevalence;
  @override
  final Acuteness? acuteness;
  @override
  final Severity? severity;
  @override
  final JsonObject? extras;
  @override
  final TriageLevel? triageLevel;
  @override
  final RecommendedChannel? recommendedChannel;

  factory _$Condition([void Function(ConditionBuilder)? updates]) =>
      (new ConditionBuilder()..update(updates)).build();

  _$Condition._(
      {required this.id,
      required this.name,
      this.commonName,
      required this.sexFilter,
      required this.categories,
      this.prevalence,
      this.acuteness,
      this.severity,
      this.extras,
      this.triageLevel,
      this.recommendedChannel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Condition', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Condition', 'name');
    BuiltValueNullFieldError.checkNotNull(sexFilter, 'Condition', 'sexFilter');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'Condition', 'categories');
  }

  @override
  Condition rebuild(void Function(ConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionBuilder toBuilder() => new ConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Condition &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        sexFilter == other.sexFilter &&
        categories == other.categories &&
        prevalence == other.prevalence &&
        acuteness == other.acuteness &&
        severity == other.severity &&
        extras == other.extras &&
        triageLevel == other.triageLevel &&
        recommendedChannel == other.recommendedChannel;
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
                                categories.hashCode),
                            prevalence.hashCode),
                        acuteness.hashCode),
                    severity.hashCode),
                extras.hashCode),
            triageLevel.hashCode),
        recommendedChannel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Condition')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('sexFilter', sexFilter)
          ..add('categories', categories)
          ..add('prevalence', prevalence)
          ..add('acuteness', acuteness)
          ..add('severity', severity)
          ..add('extras', extras)
          ..add('triageLevel', triageLevel)
          ..add('recommendedChannel', recommendedChannel))
        .toString();
  }
}

class ConditionBuilder implements Builder<Condition, ConditionBuilder> {
  _$Condition? _$v;

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

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= new ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  Prevalence? _prevalence;
  Prevalence? get prevalence => _$this._prevalence;
  set prevalence(Prevalence? prevalence) => _$this._prevalence = prevalence;

  Acuteness? _acuteness;
  Acuteness? get acuteness => _$this._acuteness;
  set acuteness(Acuteness? acuteness) => _$this._acuteness = acuteness;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  JsonObject? _extras;
  JsonObject? get extras => _$this._extras;
  set extras(JsonObject? extras) => _$this._extras = extras;

  TriageLevel? _triageLevel;
  TriageLevel? get triageLevel => _$this._triageLevel;
  set triageLevel(TriageLevel? triageLevel) =>
      _$this._triageLevel = triageLevel;

  RecommendedChannel? _recommendedChannel;
  RecommendedChannel? get recommendedChannel => _$this._recommendedChannel;
  set recommendedChannel(RecommendedChannel? recommendedChannel) =>
      _$this._recommendedChannel = recommendedChannel;

  ConditionBuilder();

  ConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _sexFilter = $v.sexFilter;
      _categories = $v.categories.toBuilder();
      _prevalence = $v.prevalence;
      _acuteness = $v.acuteness;
      _severity = $v.severity;
      _extras = $v.extras;
      _triageLevel = $v.triageLevel;
      _recommendedChannel = $v.recommendedChannel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Condition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Condition;
  }

  @override
  void update(void Function(ConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Condition build() {
    _$Condition _$result;
    try {
      _$result = _$v ??
          new _$Condition._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Condition', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Condition', 'name'),
              commonName: commonName,
              sexFilter: BuiltValueNullFieldError.checkNotNull(
                  sexFilter, 'Condition', 'sexFilter'),
              categories: categories.build(),
              prevalence: prevalence,
              acuteness: acuteness,
              severity: severity,
              extras: extras,
              triageLevel: triageLevel,
              recommendedChannel: recommendedChannel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Condition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
