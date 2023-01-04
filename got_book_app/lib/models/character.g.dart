// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCharacterCollection on Isar {
  IsarCollection<Character> get characters => this.collection();
}

const CharacterSchema = CollectionSchema(
  name: r'Character',
  id: 4658184409279959047,
  properties: {
    r'aliases': PropertySchema(
      id: 0,
      name: r'aliases',
      type: IsarType.stringList,
    ),
    r'allegiances': PropertySchema(
      id: 1,
      name: r'allegiances',
      type: IsarType.stringList,
    ),
    r'books': PropertySchema(
      id: 2,
      name: r'books',
      type: IsarType.stringList,
    ),
    r'born': PropertySchema(
      id: 3,
      name: r'born',
      type: IsarType.string,
    ),
    r'culture': PropertySchema(
      id: 4,
      name: r'culture',
      type: IsarType.string,
    ),
    r'died': PropertySchema(
      id: 5,
      name: r'died',
      type: IsarType.string,
    ),
    r'father': PropertySchema(
      id: 6,
      name: r'father',
      type: IsarType.string,
    ),
    r'hasListeners': PropertySchema(
      id: 7,
      name: r'hasListeners',
      type: IsarType.bool,
    ),
    r'mother': PropertySchema(
      id: 8,
      name: r'mother',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    ),
    r'playedBy': PropertySchema(
      id: 10,
      name: r'playedBy',
      type: IsarType.stringList,
    ),
    r'povBooks': PropertySchema(
      id: 11,
      name: r'povBooks',
      type: IsarType.stringList,
    ),
    r'spouse': PropertySchema(
      id: 12,
      name: r'spouse',
      type: IsarType.string,
    ),
    r'titles': PropertySchema(
      id: 13,
      name: r'titles',
      type: IsarType.stringList,
    ),
    r'tvSeries': PropertySchema(
      id: 14,
      name: r'tvSeries',
      type: IsarType.stringList,
    ),
    r'url': PropertySchema(
      id: 15,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _characterEstimateSize,
  serialize: _characterSerialize,
  deserialize: _characterDeserialize,
  deserializeProp: _characterDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _characterGetId,
  getLinks: _characterGetLinks,
  attach: _characterAttach,
  version: '3.0.5',
);

int _characterEstimateSize(
  Character object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.aliases;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.allegiances;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.books;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.born;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.culture;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.died;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.father;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mother;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.playedBy;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.povBooks;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.spouse;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.titles;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.tvSeries;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _characterSerialize(
  Character object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.aliases);
  writer.writeStringList(offsets[1], object.allegiances);
  writer.writeStringList(offsets[2], object.books);
  writer.writeString(offsets[3], object.born);
  writer.writeString(offsets[4], object.culture);
  writer.writeString(offsets[5], object.died);
  writer.writeString(offsets[6], object.father);
  writer.writeBool(offsets[7], object.hasListeners);
  writer.writeString(offsets[8], object.mother);
  writer.writeString(offsets[9], object.name);
  writer.writeStringList(offsets[10], object.playedBy);
  writer.writeStringList(offsets[11], object.povBooks);
  writer.writeString(offsets[12], object.spouse);
  writer.writeStringList(offsets[13], object.titles);
  writer.writeStringList(offsets[14], object.tvSeries);
  writer.writeString(offsets[15], object.url);
}

Character _characterDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Character(
    aliases: reader.readStringList(offsets[0]),
    allegiances: reader.readStringList(offsets[1]),
    books: reader.readStringList(offsets[2]),
    born: reader.readStringOrNull(offsets[3]),
    culture: reader.readStringOrNull(offsets[4]),
    died: reader.readStringOrNull(offsets[5]),
    father: reader.readStringOrNull(offsets[6]),
    id: id,
    mother: reader.readStringOrNull(offsets[8]),
    name: reader.readStringOrNull(offsets[9]),
    playedBy: reader.readStringList(offsets[10]),
    povBooks: reader.readStringList(offsets[11]),
    spouse: reader.readStringOrNull(offsets[12]),
    titles: reader.readStringList(offsets[13]),
    tvSeries: reader.readStringList(offsets[14]),
    url: reader.readString(offsets[15]),
  );
  return object;
}

P _characterDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringList(offset)) as P;
    case 11:
      return (reader.readStringList(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringList(offset)) as P;
    case 14:
      return (reader.readStringList(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _characterGetId(Character object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _characterGetLinks(Character object) {
  return [];
}

void _characterAttach(IsarCollection<dynamic> col, Id id, Character object) {
  object.id = id;
}

extension CharacterQueryWhereSort
    on QueryBuilder<Character, Character, QWhere> {
  QueryBuilder<Character, Character, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CharacterQueryWhere
    on QueryBuilder<Character, Character, QWhereClause> {
  QueryBuilder<Character, Character, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CharacterQueryFilter
    on QueryBuilder<Character, Character, QFilterCondition> {
  QueryBuilder<Character, Character, QAfterFilterCondition> aliasesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aliases',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> aliasesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aliases',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aliases',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aliases',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aliases',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aliases',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aliases',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aliases',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aliases',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aliases',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aliases',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aliases',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'aliases',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> aliasesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'aliases',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'aliases',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'aliases',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'aliases',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      aliasesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'aliases',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'allegiances',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'allegiances',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allegiances',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allegiances',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allegiances',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allegiances',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'allegiances',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'allegiances',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'allegiances',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'allegiances',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allegiances',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'allegiances',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allegiances',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allegiances',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allegiances',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allegiances',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allegiances',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      allegiancesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allegiances',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'books',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'books',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'books',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'books',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'books',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'books',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'books',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'books',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'books',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'books',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'books',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'books',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      booksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> booksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'born',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'born',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'born',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'born',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'born',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'born',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'born',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'born',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'born',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'born',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'born',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> bornIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'born',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'culture',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'culture',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'culture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'culture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> cultureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'culture',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      cultureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'culture',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'died',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'died',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'died',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'died',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'died',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'died',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'died',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'died',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'died',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'died',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'died',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> diedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'died',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'father',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'father',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'father',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'father',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'father',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'father',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> fatherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'father',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> hasListenersEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasListeners',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mother',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mother',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mother',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mother',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mother',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> motherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mother',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> playedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'playedBy',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'playedBy',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'playedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'playedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'playedBy',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> playedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'playedBy',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'playedBy',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'playedBy',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'playedBy',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      playedByLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'playedBy',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> povBooksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'povBooks',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'povBooks',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'povBooks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'povBooks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'povBooks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'povBooks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'povBooks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'povBooks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'povBooks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'povBooks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'povBooks',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'povBooks',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'povBooks',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> povBooksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'povBooks',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'povBooks',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'povBooks',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'povBooks',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      povBooksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'povBooks',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'spouse',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'spouse',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spouse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spouse',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spouse',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> spouseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spouse',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> titlesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'titles',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> titlesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'titles',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titles',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titles',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titles',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titles',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> titlesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> titlesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> titlesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      titlesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> titlesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'titles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> tvSeriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tvSeries',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tvSeries',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvSeries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tvSeries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tvSeries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tvSeries',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tvSeries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tvSeries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tvSeries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tvSeries',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvSeries',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tvSeries',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tvSeries',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> tvSeriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tvSeries',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tvSeries',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tvSeries',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tvSeries',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      tvSeriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tvSeries',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension CharacterQueryObject
    on QueryBuilder<Character, Character, QFilterCondition> {}

extension CharacterQueryLinks
    on QueryBuilder<Character, Character, QFilterCondition> {}

extension CharacterQuerySortBy on QueryBuilder<Character, Character, QSortBy> {
  QueryBuilder<Character, Character, QAfterSortBy> sortByBorn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'born', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByBornDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'born', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByCulture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByCultureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByDied() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'died', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByDiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'died', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByFather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByFatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByHasListeners() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasListeners', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByHasListenersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasListeners', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByMother() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByMotherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortBySpouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spouse', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortBySpouseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spouse', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension CharacterQuerySortThenBy
    on QueryBuilder<Character, Character, QSortThenBy> {
  QueryBuilder<Character, Character, QAfterSortBy> thenByBorn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'born', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByBornDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'born', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByCulture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByCultureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByDied() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'died', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByDiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'died', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByFather() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByFatherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'father', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByHasListeners() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasListeners', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByHasListenersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasListeners', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByMother() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByMotherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenBySpouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spouse', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenBySpouseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spouse', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension CharacterQueryWhereDistinct
    on QueryBuilder<Character, Character, QDistinct> {
  QueryBuilder<Character, Character, QDistinct> distinctByAliases() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aliases');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByAllegiances() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allegiances');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByBooks() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'books');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByBorn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'born', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByCulture(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'culture', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByDied(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'died', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByFather(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'father', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByHasListeners() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasListeners');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByMother(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mother', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByPlayedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playedBy');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByPovBooks() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'povBooks');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctBySpouse(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spouse', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByTitles() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titles');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByTvSeries() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tvSeries');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension CharacterQueryProperty
    on QueryBuilder<Character, Character, QQueryProperty> {
  QueryBuilder<Character, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> aliasesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aliases');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations>
      allegiancesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allegiances');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> booksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'books');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> bornProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'born');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> cultureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'culture');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> diedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'died');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> fatherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'father');
    });
  }

  QueryBuilder<Character, bool, QQueryOperations> hasListenersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasListeners');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> motherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mother');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> playedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playedBy');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> povBooksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'povBooks');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> spouseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spouse');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> titlesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titles');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> tvSeriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tvSeries');
    });
  }

  QueryBuilder<Character, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
