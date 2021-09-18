// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Question> _$questionSerializer = new _$QuestionSerializer();

class _$QuestionSerializer implements StructuredSerializer<Question> {
  @override
  final Iterable<Type> types = const [Question, _$Question];
  @override
  final String wireName = 'Question';

  @override
  Iterable<Object?> serialize(Serializers serializers, Question object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(QuestionItem)])),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(QuestionType)));
    }
    value = object.extras;
    if (value != null) {
      result
        ..add('extras')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JsonObject)));
    }
    return result;
  }

  @override
  Question deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(QuestionType)) as QuestionType?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(QuestionItem)]))!
              as BuiltList<Object?>);
          break;
        case 'extras':
          result.extras = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject?;
          break;
      }
    }

    return result.build();
  }
}

class _$Question extends Question {
  @override
  final QuestionType? type;
  @override
  final String text;
  @override
  final BuiltList<QuestionItem> items;
  @override
  final JsonObject? extras;

  factory _$Question([void Function(QuestionBuilder)? updates]) =>
      (new QuestionBuilder()..update(updates)).build();

  _$Question._(
      {this.type, required this.text, required this.items, this.extras})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, 'Question', 'text');
    BuiltValueNullFieldError.checkNotNull(items, 'Question', 'items');
  }

  @override
  Question rebuild(void Function(QuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionBuilder toBuilder() => new QuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
        type == other.type &&
        text == other.text &&
        items == other.items &&
        extras == other.extras;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), text.hashCode), items.hashCode),
        extras.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Question')
          ..add('type', type)
          ..add('text', text)
          ..add('items', items)
          ..add('extras', extras))
        .toString();
  }
}

class QuestionBuilder implements Builder<Question, QuestionBuilder> {
  _$Question? _$v;

  QuestionType? _type;
  QuestionType? get type => _$this._type;
  set type(QuestionType? type) => _$this._type = type;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<QuestionItem>? _items;
  ListBuilder<QuestionItem> get items =>
      _$this._items ??= new ListBuilder<QuestionItem>();
  set items(ListBuilder<QuestionItem>? items) => _$this._items = items;

  JsonObject? _extras;
  JsonObject? get extras => _$this._extras;
  set extras(JsonObject? extras) => _$this._extras = extras;

  QuestionBuilder();

  QuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _text = $v.text;
      _items = $v.items.toBuilder();
      _extras = $v.extras;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Question other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Question;
  }

  @override
  void update(void Function(QuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Question build() {
    _$Question _$result;
    try {
      _$result = _$v ??
          new _$Question._(
              type: type,
              text: BuiltValueNullFieldError.checkNotNull(
                  text, 'Question', 'text'),
              items: items.build(),
              extras: extras);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Question', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
