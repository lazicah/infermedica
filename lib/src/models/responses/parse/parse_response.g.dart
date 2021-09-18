// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parse_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParseResponse> _$parseResponseSerializer =
    new _$ParseResponseSerializer();

class _$ParseResponseSerializer implements StructuredSerializer<ParseResponse> {
  @override
  final Iterable<Type> types = const [ParseResponse, _$ParseResponse];
  @override
  final String wireName = 'ParseResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParseResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mentions',
      serializers.serialize(object.mentions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ObservationMention)])),
      'obvious',
      serializers.serialize(object.obvious,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.tokens;
    if (value != null) {
      result
        ..add('tokens')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ParseResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParseResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mentions':
          result.mentions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ObservationMention)]))!
              as BuiltList<Object?>);
          break;
        case 'tokens':
          result.tokens.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'obvious':
          result.obvious = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ParseResponse extends ParseResponse {
  @override
  final BuiltList<ObservationMention> mentions;
  @override
  final BuiltList<String>? tokens;
  @override
  final bool obvious;

  factory _$ParseResponse([void Function(ParseResponseBuilder)? updates]) =>
      (new ParseResponseBuilder()..update(updates)).build();

  _$ParseResponse._(
      {required this.mentions, this.tokens, required this.obvious})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mentions, 'ParseResponse', 'mentions');
    BuiltValueNullFieldError.checkNotNull(obvious, 'ParseResponse', 'obvious');
  }

  @override
  ParseResponse rebuild(void Function(ParseResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParseResponseBuilder toBuilder() => new ParseResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParseResponse &&
        mentions == other.mentions &&
        tokens == other.tokens &&
        obvious == other.obvious;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, mentions.hashCode), tokens.hashCode), obvious.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParseResponse')
          ..add('mentions', mentions)
          ..add('tokens', tokens)
          ..add('obvious', obvious))
        .toString();
  }
}

class ParseResponseBuilder
    implements Builder<ParseResponse, ParseResponseBuilder> {
  _$ParseResponse? _$v;

  ListBuilder<ObservationMention>? _mentions;
  ListBuilder<ObservationMention> get mentions =>
      _$this._mentions ??= new ListBuilder<ObservationMention>();
  set mentions(ListBuilder<ObservationMention>? mentions) =>
      _$this._mentions = mentions;

  ListBuilder<String>? _tokens;
  ListBuilder<String> get tokens =>
      _$this._tokens ??= new ListBuilder<String>();
  set tokens(ListBuilder<String>? tokens) => _$this._tokens = tokens;

  bool? _obvious;
  bool? get obvious => _$this._obvious;
  set obvious(bool? obvious) => _$this._obvious = obvious;

  ParseResponseBuilder();

  ParseResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mentions = $v.mentions.toBuilder();
      _tokens = $v.tokens?.toBuilder();
      _obvious = $v.obvious;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParseResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParseResponse;
  }

  @override
  void update(void Function(ParseResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParseResponse build() {
    _$ParseResponse _$result;
    try {
      _$result = _$v ??
          new _$ParseResponse._(
              mentions: mentions.build(),
              tokens: _tokens?.build(),
              obvious: BuiltValueNullFieldError.checkNotNull(
                  obvious, 'ParseResponse', 'obvious'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mentions';
        mentions.build();
        _$failedField = 'tokens';
        _tokens?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ParseResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
