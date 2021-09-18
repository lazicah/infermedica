// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Choice> _$choiceSerializer = new _$ChoiceSerializer();

class _$ChoiceSerializer implements StructuredSerializer<Choice> {
  @override
  final Iterable<Type> types = const [Choice, _$Choice];
  @override
  final String wireName = 'Choice';

  @override
  Iterable<Object?> serialize(Serializers serializers, Choice object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(ChoiceId)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Choice deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChoiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(ChoiceId)) as ChoiceId;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Choice extends Choice {
  @override
  final ChoiceId id;
  @override
  final String label;

  factory _$Choice([void Function(ChoiceBuilder)? updates]) =>
      (new ChoiceBuilder()..update(updates)).build();

  _$Choice._({required this.id, required this.label}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Choice', 'id');
    BuiltValueNullFieldError.checkNotNull(label, 'Choice', 'label');
  }

  @override
  Choice rebuild(void Function(ChoiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChoiceBuilder toBuilder() => new ChoiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Choice && id == other.id && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Choice')
          ..add('id', id)
          ..add('label', label))
        .toString();
  }
}

class ChoiceBuilder implements Builder<Choice, ChoiceBuilder> {
  _$Choice? _$v;

  ChoiceId? _id;
  ChoiceId? get id => _$this._id;
  set id(ChoiceId? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ChoiceBuilder();

  ChoiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Choice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Choice;
  }

  @override
  void update(void Function(ChoiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Choice build() {
    final _$result = _$v ??
        new _$Choice._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Choice', 'id'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, 'Choice', 'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
