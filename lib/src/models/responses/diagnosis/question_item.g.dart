// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionItem> _$questionItemSerializer =
    new _$QuestionItemSerializer();

class _$QuestionItemSerializer implements StructuredSerializer<QuestionItem> {
  @override
  final Iterable<Type> types = const [QuestionItem, _$QuestionItem];
  @override
  final String wireName = 'QuestionItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuestionItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'choices',
      serializers.serialize(object.choices,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Choice)])),
    ];

    return result;
  }

  @override
  QuestionItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionItemBuilder();

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
        case 'choices':
          result.choices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Choice)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionItem extends QuestionItem {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<Choice> choices;

  factory _$QuestionItem([void Function(QuestionItemBuilder)? updates]) =>
      (new QuestionItemBuilder()..update(updates)).build();

  _$QuestionItem._(
      {required this.id, required this.name, required this.choices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'QuestionItem', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'QuestionItem', 'name');
    BuiltValueNullFieldError.checkNotNull(choices, 'QuestionItem', 'choices');
  }

  @override
  QuestionItem rebuild(void Function(QuestionItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionItemBuilder toBuilder() => new QuestionItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionItem &&
        id == other.id &&
        name == other.name &&
        choices == other.choices;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), choices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuestionItem')
          ..add('id', id)
          ..add('name', name)
          ..add('choices', choices))
        .toString();
  }
}

class QuestionItemBuilder
    implements Builder<QuestionItem, QuestionItemBuilder> {
  _$QuestionItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Choice>? _choices;
  ListBuilder<Choice> get choices =>
      _$this._choices ??= new ListBuilder<Choice>();
  set choices(ListBuilder<Choice>? choices) => _$this._choices = choices;

  QuestionItemBuilder();

  QuestionItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _choices = $v.choices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionItem;
  }

  @override
  void update(void Function(QuestionItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionItem build() {
    _$QuestionItem _$result;
    try {
      _$result = _$v ??
          new _$QuestionItem._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'QuestionItem', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'QuestionItem', 'name'),
              choices: choices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        choices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'QuestionItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
