// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPersonModelCollection on Isar {
  IsarCollection<PersonModel> get personModels => this.collection();
}

const PersonModelSchema = CollectionSchema(
  name: r'PersonModel',
  id: -4430843621390741319,
  properties: {
    r'cell': PropertySchema(
      id: 0,
      name: r'cell',
      type: IsarType.string,
    ),
    r'dob': PropertySchema(
      id: 1,
      name: r'dob',
      type: IsarType.object,
      target: r'PersonDateModel',
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 3,
      name: r'gender',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.object,
      target: r'PersonIdModel',
    ),
    r'location': PropertySchema(
      id: 5,
      name: r'location',
      type: IsarType.object,
      target: r'PersonLocationModel',
    ),
    r'login': PropertySchema(
      id: 6,
      name: r'login',
      type: IsarType.object,
      target: r'PersonLoginModel',
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.object,
      target: r'PersonNameModel',
    ),
    r'nat': PropertySchema(
      id: 8,
      name: r'nat',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 9,
      name: r'phone',
      type: IsarType.string,
    ),
    r'picture': PropertySchema(
      id: 10,
      name: r'picture',
      type: IsarType.object,
      target: r'PersonPictureModel',
    ),
    r'registered': PropertySchema(
      id: 11,
      name: r'registered',
      type: IsarType.object,
      target: r'PersonDateModel',
    )
  },
  estimateSize: _personModelEstimateSize,
  serialize: _personModelSerialize,
  deserialize: _personModelDeserialize,
  deserializeProp: _personModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'PersonNameModel': PersonNameModelSchema,
    r'PersonLocationModel': PersonLocationModelSchema,
    r'PersonStreetModel': PersonStreetModelSchema,
    r'PersonCoordinatesModel': PersonCoordinatesModelSchema,
    r'PersonTimezoneModel': PersonTimezoneModelSchema,
    r'PersonLoginModel': PersonLoginModelSchema,
    r'PersonDateModel': PersonDateModelSchema,
    r'PersonIdModel': PersonIdModelSchema,
    r'PersonPictureModel': PersonPictureModelSchema
  },
  getId: _personModelGetId,
  getLinks: _personModelGetLinks,
  attach: _personModelAttach,
  version: '3.1.0+1',
);

int _personModelEstimateSize(
  PersonModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cell.length * 3;
  bytesCount += 3 +
      PersonDateModelSchema.estimateSize(
          object.dob, allOffsets[PersonDateModel]!, allOffsets);
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.gender.length * 3;
  bytesCount += 3 +
      PersonIdModelSchema.estimateSize(
          object.id, allOffsets[PersonIdModel]!, allOffsets);
  bytesCount += 3 +
      PersonLocationModelSchema.estimateSize(
          object.location, allOffsets[PersonLocationModel]!, allOffsets);
  bytesCount += 3 +
      PersonLoginModelSchema.estimateSize(
          object.login, allOffsets[PersonLoginModel]!, allOffsets);
  bytesCount += 3 +
      PersonNameModelSchema.estimateSize(
          object.name, allOffsets[PersonNameModel]!, allOffsets);
  bytesCount += 3 + object.nat.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 +
      PersonPictureModelSchema.estimateSize(
          object.picture, allOffsets[PersonPictureModel]!, allOffsets);
  bytesCount += 3 +
      PersonDateModelSchema.estimateSize(
          object.registered, allOffsets[PersonDateModel]!, allOffsets);
  return bytesCount;
}

void _personModelSerialize(
  PersonModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cell);
  writer.writeObject<PersonDateModel>(
    offsets[1],
    allOffsets,
    PersonDateModelSchema.serialize,
    object.dob,
  );
  writer.writeString(offsets[2], object.email);
  writer.writeString(offsets[3], object.gender);
  writer.writeObject<PersonIdModel>(
    offsets[4],
    allOffsets,
    PersonIdModelSchema.serialize,
    object.id,
  );
  writer.writeObject<PersonLocationModel>(
    offsets[5],
    allOffsets,
    PersonLocationModelSchema.serialize,
    object.location,
  );
  writer.writeObject<PersonLoginModel>(
    offsets[6],
    allOffsets,
    PersonLoginModelSchema.serialize,
    object.login,
  );
  writer.writeObject<PersonNameModel>(
    offsets[7],
    allOffsets,
    PersonNameModelSchema.serialize,
    object.name,
  );
  writer.writeString(offsets[8], object.nat);
  writer.writeString(offsets[9], object.phone);
  writer.writeObject<PersonPictureModel>(
    offsets[10],
    allOffsets,
    PersonPictureModelSchema.serialize,
    object.picture,
  );
  writer.writeObject<PersonDateModel>(
    offsets[11],
    allOffsets,
    PersonDateModelSchema.serialize,
    object.registered,
  );
}

PersonModel _personModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PersonModel(
    cell: reader.readString(offsets[0]),
    dob: reader.readObjectOrNull<PersonDateModel>(
          offsets[1],
          PersonDateModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonDateModel(),
    email: reader.readString(offsets[2]),
    gender: reader.readString(offsets[3]),
    id: reader.readObjectOrNull<PersonIdModel>(
          offsets[4],
          PersonIdModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonIdModel(),
    isarId: id,
    location: reader.readObjectOrNull<PersonLocationModel>(
          offsets[5],
          PersonLocationModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonLocationModel(),
    login: reader.readObjectOrNull<PersonLoginModel>(
          offsets[6],
          PersonLoginModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonLoginModel(),
    name: reader.readObjectOrNull<PersonNameModel>(
          offsets[7],
          PersonNameModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonNameModel(),
    nat: reader.readString(offsets[8]),
    phone: reader.readString(offsets[9]),
    picture: reader.readObjectOrNull<PersonPictureModel>(
          offsets[10],
          PersonPictureModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonPictureModel(),
    registered: reader.readObjectOrNull<PersonDateModel>(
          offsets[11],
          PersonDateModelSchema.deserialize,
          allOffsets,
        ) ??
        PersonDateModel(),
  );
  return object;
}

P _personModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<PersonDateModel>(
            offset,
            PersonDateModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonDateModel()) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<PersonIdModel>(
            offset,
            PersonIdModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonIdModel()) as P;
    case 5:
      return (reader.readObjectOrNull<PersonLocationModel>(
            offset,
            PersonLocationModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonLocationModel()) as P;
    case 6:
      return (reader.readObjectOrNull<PersonLoginModel>(
            offset,
            PersonLoginModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonLoginModel()) as P;
    case 7:
      return (reader.readObjectOrNull<PersonNameModel>(
            offset,
            PersonNameModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonNameModel()) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<PersonPictureModel>(
            offset,
            PersonPictureModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonPictureModel()) as P;
    case 11:
      return (reader.readObjectOrNull<PersonDateModel>(
            offset,
            PersonDateModelSchema.deserialize,
            allOffsets,
          ) ??
          PersonDateModel()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _personModelGetId(PersonModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _personModelGetLinks(PersonModel object) {
  return [];
}

void _personModelAttach(
    IsarCollection<dynamic> col, Id id, PersonModel object) {
  object.isarId = id;
}

extension PersonModelQueryWhereSort
    on QueryBuilder<PersonModel, PersonModel, QWhere> {
  QueryBuilder<PersonModel, PersonModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PersonModelQueryWhere
    on QueryBuilder<PersonModel, PersonModel, QWhereClause> {
  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PersonModelQueryFilter
    on QueryBuilder<PersonModel, PersonModel, QFilterCondition> {
  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cell',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cell',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cellIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cell',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      cellIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cell',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> genderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      genderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> genderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> genderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> genderContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> genderMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> natIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nat',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      natIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nat',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      phoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }
}

extension PersonModelQueryObject
    on QueryBuilder<PersonModel, PersonModel, QFilterCondition> {
  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> dob(
      FilterQuery<PersonDateModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dob');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> id(
      FilterQuery<PersonIdModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'id');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> location(
      FilterQuery<PersonLocationModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'location');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> login(
      FilterQuery<PersonLoginModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'login');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> name(
      FilterQuery<PersonNameModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'name');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> picture(
      FilterQuery<PersonPictureModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'picture');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> registered(
      FilterQuery<PersonDateModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'registered');
    });
  }
}

extension PersonModelQueryLinks
    on QueryBuilder<PersonModel, PersonModel, QFilterCondition> {}

extension PersonModelQuerySortBy
    on QueryBuilder<PersonModel, PersonModel, QSortBy> {
  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByCell() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByCellDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByNat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByNatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension PersonModelQuerySortThenBy
    on QueryBuilder<PersonModel, PersonModel, QSortThenBy> {
  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByCell() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByCellDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByNat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByNatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension PersonModelQueryWhereDistinct
    on QueryBuilder<PersonModel, PersonModel, QDistinct> {
  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByCell(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cell', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByNat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }
}

extension PersonModelQueryProperty
    on QueryBuilder<PersonModel, PersonModel, QQueryProperty> {
  QueryBuilder<PersonModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<PersonModel, String, QQueryOperations> cellProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cell');
    });
  }

  QueryBuilder<PersonModel, PersonDateModel, QQueryOperations> dobProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dob');
    });
  }

  QueryBuilder<PersonModel, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<PersonModel, String, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<PersonModel, PersonIdModel, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PersonModel, PersonLocationModel, QQueryOperations>
      locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<PersonModel, PersonLoginModel, QQueryOperations>
      loginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'login');
    });
  }

  QueryBuilder<PersonModel, PersonNameModel, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PersonModel, String, QQueryOperations> natProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nat');
    });
  }

  QueryBuilder<PersonModel, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<PersonModel, PersonPictureModel, QQueryOperations>
      pictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'picture');
    });
  }

  QueryBuilder<PersonModel, PersonDateModel, QQueryOperations>
      registeredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registered');
    });
  }
}
