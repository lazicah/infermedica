// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parse_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParseRequest> _$parseRequestSerializer =
    new _$ParseRequestSerializer();

class _$ParseRequestSerializer implements StructuredSerializer<ParseRequest> {
  @override
  final Iterable<Type> types = const [ParseRequest, _$ParseRequest];
  @override
  final String wireName = 'ParseRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParseRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'age',
      serializers.serialize(object.age,
          specifiedType: const FullType(AgeRequestModel)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sex;
    if (value != null) {
      result
        ..add('sex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SexType)));
    }
    value = object.context;
    if (value != null) {
      result
        ..add('context')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.includeTokens;
    if (value != null) {
      result
        ..add('include_tokens ')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.correctSpelling;
    if (value != null) {
      result
        ..add('correct_spelling ')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.conceptTypes;
    if (value != null) {
      result
        ..add('concept_types')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ParseRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParseRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'age':
          result.age.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AgeRequestModel))!
              as AgeRequestModel);
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(SexType)) as SexType?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'context':
          result.context.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'include_tokens ':
          result.includeTokens = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'correct_spelling ':
          result.correctSpelling = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'concept_types':
          result.conceptTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ParseRequest extends ParseRequest {
  @override
  final AgeRequestModel age;
  @override
  final SexType? sex;
  @override
  final String text;
  @override
  final BuiltList<String>? context;
  @override
  final bool? includeTokens;
  @override
  final bool? correctSpelling;
  @override
  final BuiltList<String>? conceptTypes;

  factory _$ParseRequest([void Function(ParseRequestBuilder)? updates]) =>
      (new ParseRequestBuilder()..update(updates)).build();

  _$ParseRequest._(
      {required this.age,
      this.sex,
      required this.text,
      this.context,
      this.includeTokens,
      this.correctSpelling,
      this.conceptTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(age, 'ParseRequest', 'age');
    BuiltValueNullFieldError.checkNotNull(text, 'ParseRequest', 'text');
  }

  @override
  ParseRequest rebuild(void Function(ParseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParseRequestBuilder toBuilder() => new ParseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParseRequest &&
        age == other.age &&
        sex == other.sex &&
        text == other.text &&
        context == other.context &&
        includeTokens == other.includeTokens &&
        correctSpelling == other.correctSpelling &&
        conceptTypes == other.conceptTypes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, age.hashCode), sex.hashCode), text.hashCode),
                    context.hashCode),
                includeTokens.hashCode),
            correctSpelling.hashCode),
        conceptTypes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParseRequest')
          ..add('age', age)
          ..add('sex', sex)
          ..add('text', text)
          ..add('context', context)
          ..add('includeTokens', includeTokens)
          ..add('correctSpelling', correctSpelling)
          ..add('conceptTypes', conceptTypes))
        .toString();
  }
}

class ParseRequestBuilder
    implements Builder<ParseRequest, ParseRequestBuilder> {
  _$ParseRequest? _$v;

  AgeRequestModelBuilder? _age;
  AgeRequestModelBuilder get age =>
      _$this._age ??= new AgeRequestModelBuilder();
  set age(AgeRequestModelBuilder? age) => _$this._age = age;

  SexType? _sex;
  SexType? get sex => _$this._sex;
  set sex(SexType? sex) => _$this._sex = sex;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String>? _context;
  ListBuilder<String> get context =>
      _$this._context ??= new ListBuilder<String>();
  set context(ListBuilder<String>? context) => _$this._context = context;

  bool? _includeTokens;
  bool? get includeTokens => _$this._includeTokens;
  set includeTokens(bool? includeTokens) =>
      _$this._includeTokens = includeTokens;

  bool? _correctSpelling;
  bool? get correctSpelling => _$this._correctSpelling;
  set correctSpelling(bool? correctSpelling) =>
      _$this._correctSpelling = correctSpelling;

  ListBuilder<String>? _conceptTypes;
  ListBuilder<String> get conceptTypes =>
      _$this._conceptTypes ??= new ListBuilder<String>();
  set conceptTypes(ListBuilder<String>? conceptTypes) =>
      _$this._conceptTypes = conceptTypes;

  ParseRequestBuilder();

  ParseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _age = $v.age.toBuilder();
      _sex = $v.sex;
      _text = $v.text;
      _context = $v.context?.toBuilder();
      _includeTokens = $v.includeTokens;
      _correctSpelling = $v.correctSpelling;
      _conceptTypes = $v.conceptTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParseRequest;
  }

  @override
  void update(void Function(ParseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParseRequest build() {
    _$ParseRequest _$result;
    try {
      _$result = _$v ??
          new _$ParseRequest._(
              age: age.build(),
              sex: sex,
              text: BuiltValueNullFieldError.checkNotNull(
                  text, 'ParseRequest', 'text'),
              context: _context?.build(),
              includeTokens: includeTokens,
              correctSpelling: correctSpelling,
              conceptTypes: _conceptTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'age';
        age.build();

        _$failedField = 'context';
        _context?.build();

        _$failedField = 'conceptTypes';
        _conceptTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ParseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
