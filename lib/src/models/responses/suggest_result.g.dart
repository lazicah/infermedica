// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggest_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuggestResult> _$suggestResultSerializer =
    new _$SuggestResultSerializer();

class _$SuggestResultSerializer implements StructuredSerializer<SuggestResult> {
  @override
  final Iterable<Type> types = const [SuggestResult, _$SuggestResult];
  @override
  final String wireName = 'SuggestResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, SuggestResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.commonName;
    if (value != null) {
      result
        ..add('common_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.explication;
    if (value != null) {
      result
        ..add('explication')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instruction;
    if (value != null) {
      result
        ..add('instruction')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  SuggestResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuggestResultBuilder();

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
        case 'explication':
          result.explication = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instruction':
          result.instruction.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$SuggestResult extends SuggestResult {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? commonName;
  @override
  final String? explication;
  @override
  final BuiltList<String>? instruction;

  factory _$SuggestResult([void Function(SuggestResultBuilder)? updates]) =>
      (new SuggestResultBuilder()..update(updates)).build();

  _$SuggestResult._(
      {required this.id,
      required this.name,
      this.commonName,
      this.explication,
      this.instruction})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'SuggestResult', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'SuggestResult', 'name');
  }

  @override
  SuggestResult rebuild(void Function(SuggestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuggestResultBuilder toBuilder() => new SuggestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuggestResult &&
        id == other.id &&
        name == other.name &&
        commonName == other.commonName &&
        explication == other.explication &&
        instruction == other.instruction;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), commonName.hashCode),
            explication.hashCode),
        instruction.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuggestResult')
          ..add('id', id)
          ..add('name', name)
          ..add('commonName', commonName)
          ..add('explication', explication)
          ..add('instruction', instruction))
        .toString();
  }
}

class SuggestResultBuilder
    implements Builder<SuggestResult, SuggestResultBuilder> {
  _$SuggestResult? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  String? _explication;
  String? get explication => _$this._explication;
  set explication(String? explication) => _$this._explication = explication;

  ListBuilder<String>? _instruction;
  ListBuilder<String> get instruction =>
      _$this._instruction ??= new ListBuilder<String>();
  set instruction(ListBuilder<String>? instruction) =>
      _$this._instruction = instruction;

  SuggestResultBuilder();

  SuggestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commonName = $v.commonName;
      _explication = $v.explication;
      _instruction = $v.instruction?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuggestResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuggestResult;
  }

  @override
  void update(void Function(SuggestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuggestResult build() {
    _$SuggestResult _$result;
    try {
      _$result = _$v ??
          new _$SuggestResult._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'SuggestResult', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'SuggestResult', 'name'),
              commonName: commonName,
              explication: explication,
              instruction: _instruction?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instruction';
        _instruction?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SuggestResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
