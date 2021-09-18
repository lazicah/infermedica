// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConditionDetails> _$conditionDetailsSerializer =
    new _$ConditionDetailsSerializer();

class _$ConditionDetailsSerializer
    implements StructuredSerializer<ConditionDetails> {
  @override
  final Iterable<Type> types = const [ConditionDetails, _$ConditionDetails];
  @override
  final String wireName = 'ConditionDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConditionDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.icd10Code;
    if (value != null) {
      result
        ..add('icd10_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Category)));
    }
    value = object.prevalence;
    if (value != null) {
      result
        ..add('prevalence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Prevalence)));
    }
    value = object.severity;
    if (value != null) {
      result
        ..add('severity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Severity)));
    }
    value = object.acuteness;
    if (value != null) {
      result
        ..add('acuteness')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Acuteness)));
    }
    value = object.triageLevel;
    if (value != null) {
      result
        ..add('triage_level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TriageLevel)));
    }
    value = object.hint;
    if (value != null) {
      result
        ..add('hint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ConditionDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConditionDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'icd10_code':
          result.icd10Code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category))! as Category);
          break;
        case 'prevalence':
          result.prevalence = serializers.deserialize(value,
              specifiedType: const FullType(Prevalence)) as Prevalence?;
          break;
        case 'severity':
          result.severity = serializers.deserialize(value,
              specifiedType: const FullType(Severity)) as Severity?;
          break;
        case 'acuteness':
          result.acuteness = serializers.deserialize(value,
              specifiedType: const FullType(Acuteness)) as Acuteness?;
          break;
        case 'triage_level':
          result.triageLevel = serializers.deserialize(value,
              specifiedType: const FullType(TriageLevel)) as TriageLevel?;
          break;
        case 'hint':
          result.hint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ConditionDetails extends ConditionDetails {
  @override
  final String? icd10Code;
  @override
  final Category? category;
  @override
  final Prevalence? prevalence;
  @override
  final Severity? severity;
  @override
  final Acuteness? acuteness;
  @override
  final TriageLevel? triageLevel;
  @override
  final String? hint;

  factory _$ConditionDetails(
          [void Function(ConditionDetailsBuilder)? updates]) =>
      (new ConditionDetailsBuilder()..update(updates)).build();

  _$ConditionDetails._(
      {this.icd10Code,
      this.category,
      this.prevalence,
      this.severity,
      this.acuteness,
      this.triageLevel,
      this.hint})
      : super._();

  @override
  ConditionDetails rebuild(void Function(ConditionDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionDetailsBuilder toBuilder() =>
      new ConditionDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConditionDetails &&
        icd10Code == other.icd10Code &&
        category == other.category &&
        prevalence == other.prevalence &&
        severity == other.severity &&
        acuteness == other.acuteness &&
        triageLevel == other.triageLevel &&
        hint == other.hint;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, icd10Code.hashCode), category.hashCode),
                        prevalence.hashCode),
                    severity.hashCode),
                acuteness.hashCode),
            triageLevel.hashCode),
        hint.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConditionDetails')
          ..add('icd10Code', icd10Code)
          ..add('category', category)
          ..add('prevalence', prevalence)
          ..add('severity', severity)
          ..add('acuteness', acuteness)
          ..add('triageLevel', triageLevel)
          ..add('hint', hint))
        .toString();
  }
}

class ConditionDetailsBuilder
    implements Builder<ConditionDetails, ConditionDetailsBuilder> {
  _$ConditionDetails? _$v;

  String? _icd10Code;
  String? get icd10Code => _$this._icd10Code;
  set icd10Code(String? icd10Code) => _$this._icd10Code = icd10Code;

  CategoryBuilder? _category;
  CategoryBuilder get category => _$this._category ??= new CategoryBuilder();
  set category(CategoryBuilder? category) => _$this._category = category;

  Prevalence? _prevalence;
  Prevalence? get prevalence => _$this._prevalence;
  set prevalence(Prevalence? prevalence) => _$this._prevalence = prevalence;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  Acuteness? _acuteness;
  Acuteness? get acuteness => _$this._acuteness;
  set acuteness(Acuteness? acuteness) => _$this._acuteness = acuteness;

  TriageLevel? _triageLevel;
  TriageLevel? get triageLevel => _$this._triageLevel;
  set triageLevel(TriageLevel? triageLevel) =>
      _$this._triageLevel = triageLevel;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  ConditionDetailsBuilder();

  ConditionDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icd10Code = $v.icd10Code;
      _category = $v.category?.toBuilder();
      _prevalence = $v.prevalence;
      _severity = $v.severity;
      _acuteness = $v.acuteness;
      _triageLevel = $v.triageLevel;
      _hint = $v.hint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConditionDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConditionDetails;
  }

  @override
  void update(void Function(ConditionDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConditionDetails build() {
    _$ConditionDetails _$result;
    try {
      _$result = _$v ??
          new _$ConditionDetails._(
              icd10Code: icd10Code,
              category: _category?.build(),
              prevalence: prevalence,
              severity: severity,
              acuteness: acuteness,
              triageLevel: triageLevel,
              hint: hint);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConditionDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
