// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Favourite extends DataClass implements Insertable<Favourite> {
  final String sId;
  final int sN;
  final String author1;
  final String author2;
  final String author3;
  final String title;
  final String edition;
  final int year;
  final String publisher;
  final String pages;
  final String language;
  final String iSBNISSN;
  final int quantity;
  final int iV;
  Favourite(
      {@required this.sId,
      this.sN,
      this.author1,
      this.author2,
      this.author3,
      @required this.title,
      this.edition,
      this.year,
      this.publisher,
      this.pages,
      this.language,
      this.iSBNISSN,
      this.quantity,
      this.iV});
  factory Favourite.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return Favourite(
      sId: stringType.mapFromDatabaseResponse(data['${effectivePrefix}s_id']),
      sN: intType.mapFromDatabaseResponse(data['${effectivePrefix}s_n']),
      author1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}author1']),
      author2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}author2']),
      author3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}author3']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      edition:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}edition']),
      year: intType.mapFromDatabaseResponse(data['${effectivePrefix}year']),
      publisher: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}publisher']),
      pages:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}pages']),
      language: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}language']),
      iSBNISSN: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}i_s_b_n_i_s_s_n']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      iV: intType.mapFromDatabaseResponse(data['${effectivePrefix}i_v']),
    );
  }
  factory Favourite.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Favourite(
      sId: serializer.fromJson<String>(json['sId']),
      sN: serializer.fromJson<int>(json['sN']),
      author1: serializer.fromJson<String>(json['author1']),
      author2: serializer.fromJson<String>(json['author2']),
      author3: serializer.fromJson<String>(json['author3']),
      title: serializer.fromJson<String>(json['title']),
      edition: serializer.fromJson<String>(json['edition']),
      year: serializer.fromJson<int>(json['year']),
      publisher: serializer.fromJson<String>(json['publisher']),
      pages: serializer.fromJson<String>(json['pages']),
      language: serializer.fromJson<String>(json['language']),
      iSBNISSN: serializer.fromJson<String>(json['iSBNISSN']),
      quantity: serializer.fromJson<int>(json['quantity']),
      iV: serializer.fromJson<int>(json['iV']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return <String, dynamic>{
      'sId': serializer.toJson<String>(sId),
      'sN': serializer.toJson<int>(sN),
      'author1': serializer.toJson<String>(author1),
      'author2': serializer.toJson<String>(author2),
      'author3': serializer.toJson<String>(author3),
      'title': serializer.toJson<String>(title),
      'edition': serializer.toJson<String>(edition),
      'year': serializer.toJson<int>(year),
      'publisher': serializer.toJson<String>(publisher),
      'pages': serializer.toJson<String>(pages),
      'language': serializer.toJson<String>(language),
      'iSBNISSN': serializer.toJson<String>(iSBNISSN),
      'quantity': serializer.toJson<int>(quantity),
      'iV': serializer.toJson<int>(iV),
    };
  }

  @override
  FavouritesCompanion createCompanion(bool nullToAbsent) {
    return FavouritesCompanion(
      sId: sId == null && nullToAbsent ? const Value.absent() : Value(sId),
      sN: sN == null && nullToAbsent ? const Value.absent() : Value(sN),
      author1: author1 == null && nullToAbsent
          ? const Value.absent()
          : Value(author1),
      author2: author2 == null && nullToAbsent
          ? const Value.absent()
          : Value(author2),
      author3: author3 == null && nullToAbsent
          ? const Value.absent()
          : Value(author3),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      edition: edition == null && nullToAbsent
          ? const Value.absent()
          : Value(edition),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      publisher: publisher == null && nullToAbsent
          ? const Value.absent()
          : Value(publisher),
      pages:
          pages == null && nullToAbsent ? const Value.absent() : Value(pages),
      language: language == null && nullToAbsent
          ? const Value.absent()
          : Value(language),
      iSBNISSN: iSBNISSN == null && nullToAbsent
          ? const Value.absent()
          : Value(iSBNISSN),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      iV: iV == null && nullToAbsent ? const Value.absent() : Value(iV),
    );
  }

  Favourite copyWith(
          {String sId,
          int sN,
          String author1,
          String author2,
          String author3,
          String title,
          String edition,
          int year,
          String publisher,
          String pages,
          String language,
          String iSBNISSN,
          int quantity,
          int iV}) =>
      Favourite(
        sId: sId ?? this.sId,
        sN: sN ?? this.sN,
        author1: author1 ?? this.author1,
        author2: author2 ?? this.author2,
        author3: author3 ?? this.author3,
        title: title ?? this.title,
        edition: edition ?? this.edition,
        year: year ?? this.year,
        publisher: publisher ?? this.publisher,
        pages: pages ?? this.pages,
        language: language ?? this.language,
        iSBNISSN: iSBNISSN ?? this.iSBNISSN,
        quantity: quantity ?? this.quantity,
        iV: iV ?? this.iV,
      );
  @override
  String toString() {
    return (StringBuffer('Favourite(')
          ..write('sId: $sId, ')
          ..write('sN: $sN, ')
          ..write('author1: $author1, ')
          ..write('author2: $author2, ')
          ..write('author3: $author3, ')
          ..write('title: $title, ')
          ..write('edition: $edition, ')
          ..write('year: $year, ')
          ..write('publisher: $publisher, ')
          ..write('pages: $pages, ')
          ..write('language: $language, ')
          ..write('iSBNISSN: $iSBNISSN, ')
          ..write('quantity: $quantity, ')
          ..write('iV: $iV')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      sId.hashCode,
      $mrjc(
          sN.hashCode,
          $mrjc(
              author1.hashCode,
              $mrjc(
                  author2.hashCode,
                  $mrjc(
                      author3.hashCode,
                      $mrjc(
                          title.hashCode,
                          $mrjc(
                              edition.hashCode,
                              $mrjc(
                                  year.hashCode,
                                  $mrjc(
                                      publisher.hashCode,
                                      $mrjc(
                                          pages.hashCode,
                                          $mrjc(
                                              language.hashCode,
                                              $mrjc(
                                                  iSBNISSN.hashCode,
                                                  $mrjc(quantity.hashCode,
                                                      iV.hashCode))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Favourite &&
          other.sId == this.sId &&
          other.sN == this.sN &&
          other.author1 == this.author1 &&
          other.author2 == this.author2 &&
          other.author3 == this.author3 &&
          other.title == this.title &&
          other.edition == this.edition &&
          other.year == this.year &&
          other.publisher == this.publisher &&
          other.pages == this.pages &&
          other.language == this.language &&
          other.iSBNISSN == this.iSBNISSN &&
          other.quantity == this.quantity &&
          other.iV == this.iV);
}

class FavouritesCompanion extends UpdateCompanion<Favourite> {
  final Value<String> sId;
  final Value<int> sN;
  final Value<String> author1;
  final Value<String> author2;
  final Value<String> author3;
  final Value<String> title;
  final Value<String> edition;
  final Value<int> year;
  final Value<String> publisher;
  final Value<String> pages;
  final Value<String> language;
  final Value<String> iSBNISSN;
  final Value<int> quantity;
  final Value<int> iV;
  const FavouritesCompanion({
    this.sId = const Value.absent(),
    this.sN = const Value.absent(),
    this.author1 = const Value.absent(),
    this.author2 = const Value.absent(),
    this.author3 = const Value.absent(),
    this.title = const Value.absent(),
    this.edition = const Value.absent(),
    this.year = const Value.absent(),
    this.publisher = const Value.absent(),
    this.pages = const Value.absent(),
    this.language = const Value.absent(),
    this.iSBNISSN = const Value.absent(),
    this.quantity = const Value.absent(),
    this.iV = const Value.absent(),
  });
  FavouritesCompanion.insert({
    @required String sId,
    this.sN = const Value.absent(),
    this.author1 = const Value.absent(),
    this.author2 = const Value.absent(),
    this.author3 = const Value.absent(),
    @required String title,
    this.edition = const Value.absent(),
    this.year = const Value.absent(),
    this.publisher = const Value.absent(),
    this.pages = const Value.absent(),
    this.language = const Value.absent(),
    this.iSBNISSN = const Value.absent(),
    this.quantity = const Value.absent(),
    this.iV = const Value.absent(),
  })  : sId = Value(sId),
        title = Value(title);
  FavouritesCompanion copyWith(
      {Value<String> sId,
      Value<int> sN,
      Value<String> author1,
      Value<String> author2,
      Value<String> author3,
      Value<String> title,
      Value<String> edition,
      Value<int> year,
      Value<String> publisher,
      Value<String> pages,
      Value<String> language,
      Value<String> iSBNISSN,
      Value<int> quantity,
      Value<int> iV}) {
    return FavouritesCompanion(
      sId: sId ?? this.sId,
      sN: sN ?? this.sN,
      author1: author1 ?? this.author1,
      author2: author2 ?? this.author2,
      author3: author3 ?? this.author3,
      title: title ?? this.title,
      edition: edition ?? this.edition,
      year: year ?? this.year,
      publisher: publisher ?? this.publisher,
      pages: pages ?? this.pages,
      language: language ?? this.language,
      iSBNISSN: iSBNISSN ?? this.iSBNISSN,
      quantity: quantity ?? this.quantity,
      iV: iV ?? this.iV,
    );
  }
}

class $FavouritesTable extends Favourites
    with TableInfo<$FavouritesTable, Favourite> {
  final GeneratedDatabase _db;
  final String _alias;
  $FavouritesTable(this._db, [this._alias]);
  final VerificationMeta _sIdMeta = const VerificationMeta('sId');
  GeneratedTextColumn _sId;
  @override
  GeneratedTextColumn get sId => _sId ??= _constructSId();
  GeneratedTextColumn _constructSId() {
    return GeneratedTextColumn(
      's_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sNMeta = const VerificationMeta('sN');
  GeneratedIntColumn _sN;
  @override
  GeneratedIntColumn get sN => _sN ??= _constructSN();
  GeneratedIntColumn _constructSN() {
    return GeneratedIntColumn(
      's_n',
      $tableName,
      true,
    );
  }

  final VerificationMeta _author1Meta = const VerificationMeta('author1');
  GeneratedTextColumn _author1;
  @override
  GeneratedTextColumn get author1 => _author1 ??= _constructAuthor1();
  GeneratedTextColumn _constructAuthor1() {
    return GeneratedTextColumn(
      'author1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _author2Meta = const VerificationMeta('author2');
  GeneratedTextColumn _author2;
  @override
  GeneratedTextColumn get author2 => _author2 ??= _constructAuthor2();
  GeneratedTextColumn _constructAuthor2() {
    return GeneratedTextColumn(
      'author2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _author3Meta = const VerificationMeta('author3');
  GeneratedTextColumn _author3;
  @override
  GeneratedTextColumn get author3 => _author3 ??= _constructAuthor3();
  GeneratedTextColumn _constructAuthor3() {
    return GeneratedTextColumn(
      'author3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _editionMeta = const VerificationMeta('edition');
  GeneratedTextColumn _edition;
  @override
  GeneratedTextColumn get edition => _edition ??= _constructEdition();
  GeneratedTextColumn _constructEdition() {
    return GeneratedTextColumn(
      'edition',
      $tableName,
      true,
    );
  }

  final VerificationMeta _yearMeta = const VerificationMeta('year');
  GeneratedIntColumn _year;
  @override
  GeneratedIntColumn get year => _year ??= _constructYear();
  GeneratedIntColumn _constructYear() {
    return GeneratedIntColumn(
      'year',
      $tableName,
      true,
    );
  }

  final VerificationMeta _publisherMeta = const VerificationMeta('publisher');
  GeneratedTextColumn _publisher;
  @override
  GeneratedTextColumn get publisher => _publisher ??= _constructPublisher();
  GeneratedTextColumn _constructPublisher() {
    return GeneratedTextColumn(
      'publisher',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pagesMeta = const VerificationMeta('pages');
  GeneratedTextColumn _pages;
  @override
  GeneratedTextColumn get pages => _pages ??= _constructPages();
  GeneratedTextColumn _constructPages() {
    return GeneratedTextColumn(
      'pages',
      $tableName,
      true,
    );
  }

  final VerificationMeta _languageMeta = const VerificationMeta('language');
  GeneratedTextColumn _language;
  @override
  GeneratedTextColumn get language => _language ??= _constructLanguage();
  GeneratedTextColumn _constructLanguage() {
    return GeneratedTextColumn(
      'language',
      $tableName,
      true,
    );
  }

  final VerificationMeta _iSBNISSNMeta = const VerificationMeta('iSBNISSN');
  GeneratedTextColumn _iSBNISSN;
  @override
  GeneratedTextColumn get iSBNISSN => _iSBNISSN ??= _constructISBNISSN();
  GeneratedTextColumn _constructISBNISSN() {
    return GeneratedTextColumn(
      'i_s_b_n_i_s_s_n',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;
  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();
  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _iVMeta = const VerificationMeta('iV');
  GeneratedIntColumn _iV;
  @override
  GeneratedIntColumn get iV => _iV ??= _constructIV();
  GeneratedIntColumn _constructIV() {
    return GeneratedIntColumn(
      'i_v',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        sId,
        sN,
        author1,
        author2,
        author3,
        title,
        edition,
        year,
        publisher,
        pages,
        language,
        iSBNISSN,
        quantity,
        iV
      ];
  @override
  $FavouritesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favourites';
  @override
  final String actualTableName = 'favourites';
  @override
  VerificationContext validateIntegrity(FavouritesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.sId.present) {
      context.handle(_sIdMeta, sId.isAcceptableValue(d.sId.value, _sIdMeta));
    } else if (sId.isRequired && isInserting) {
      context.missing(_sIdMeta);
    }
    if (d.sN.present) {
      context.handle(_sNMeta, sN.isAcceptableValue(d.sN.value, _sNMeta));
    } else if (sN.isRequired && isInserting) {
      context.missing(_sNMeta);
    }
    if (d.author1.present) {
      context.handle(_author1Meta,
          author1.isAcceptableValue(d.author1.value, _author1Meta));
    } else if (author1.isRequired && isInserting) {
      context.missing(_author1Meta);
    }
    if (d.author2.present) {
      context.handle(_author2Meta,
          author2.isAcceptableValue(d.author2.value, _author2Meta));
    } else if (author2.isRequired && isInserting) {
      context.missing(_author2Meta);
    }
    if (d.author3.present) {
      context.handle(_author3Meta,
          author3.isAcceptableValue(d.author3.value, _author3Meta));
    } else if (author3.isRequired && isInserting) {
      context.missing(_author3Meta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.edition.present) {
      context.handle(_editionMeta,
          edition.isAcceptableValue(d.edition.value, _editionMeta));
    } else if (edition.isRequired && isInserting) {
      context.missing(_editionMeta);
    }
    if (d.year.present) {
      context.handle(
          _yearMeta, year.isAcceptableValue(d.year.value, _yearMeta));
    } else if (year.isRequired && isInserting) {
      context.missing(_yearMeta);
    }
    if (d.publisher.present) {
      context.handle(_publisherMeta,
          publisher.isAcceptableValue(d.publisher.value, _publisherMeta));
    } else if (publisher.isRequired && isInserting) {
      context.missing(_publisherMeta);
    }
    if (d.pages.present) {
      context.handle(
          _pagesMeta, pages.isAcceptableValue(d.pages.value, _pagesMeta));
    } else if (pages.isRequired && isInserting) {
      context.missing(_pagesMeta);
    }
    if (d.language.present) {
      context.handle(_languageMeta,
          language.isAcceptableValue(d.language.value, _languageMeta));
    } else if (language.isRequired && isInserting) {
      context.missing(_languageMeta);
    }
    if (d.iSBNISSN.present) {
      context.handle(_iSBNISSNMeta,
          iSBNISSN.isAcceptableValue(d.iSBNISSN.value, _iSBNISSNMeta));
    } else if (iSBNISSN.isRequired && isInserting) {
      context.missing(_iSBNISSNMeta);
    }
    if (d.quantity.present) {
      context.handle(_quantityMeta,
          quantity.isAcceptableValue(d.quantity.value, _quantityMeta));
    } else if (quantity.isRequired && isInserting) {
      context.missing(_quantityMeta);
    }
    if (d.iV.present) {
      context.handle(_iVMeta, iV.isAcceptableValue(d.iV.value, _iVMeta));
    } else if (iV.isRequired && isInserting) {
      context.missing(_iVMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sId};
  @override
  Favourite map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Favourite.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(FavouritesCompanion d) {
    final map = <String, Variable>{};
    if (d.sId.present) {
      map['s_id'] = Variable<String, StringType>(d.sId.value);
    }
    if (d.sN.present) {
      map['s_n'] = Variable<int, IntType>(d.sN.value);
    }
    if (d.author1.present) {
      map['author1'] = Variable<String, StringType>(d.author1.value);
    }
    if (d.author2.present) {
      map['author2'] = Variable<String, StringType>(d.author2.value);
    }
    if (d.author3.present) {
      map['author3'] = Variable<String, StringType>(d.author3.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.edition.present) {
      map['edition'] = Variable<String, StringType>(d.edition.value);
    }
    if (d.year.present) {
      map['year'] = Variable<int, IntType>(d.year.value);
    }
    if (d.publisher.present) {
      map['publisher'] = Variable<String, StringType>(d.publisher.value);
    }
    if (d.pages.present) {
      map['pages'] = Variable<String, StringType>(d.pages.value);
    }
    if (d.language.present) {
      map['language'] = Variable<String, StringType>(d.language.value);
    }
    if (d.iSBNISSN.present) {
      map['i_s_b_n_i_s_s_n'] = Variable<String, StringType>(d.iSBNISSN.value);
    }
    if (d.quantity.present) {
      map['quantity'] = Variable<int, IntType>(d.quantity.value);
    }
    if (d.iV.present) {
      map['i_v'] = Variable<int, IntType>(d.iV.value);
    }
    return map;
  }

  @override
  $FavouritesTable createAlias(String alias) {
    return $FavouritesTable(_db, alias);
  }
}

abstract class _$FavouritesDatabase extends GeneratedDatabase {
  _$FavouritesDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  $FavouritesTable _favourites;
  $FavouritesTable get favourites => _favourites ??= $FavouritesTable(this);
  FavouritesDao _favouritesDao;
  FavouritesDao get favouritesDao =>
      _favouritesDao ??= FavouritesDao(this as FavouritesDatabase);
  @override
  List<TableInfo> get allTables => [favourites];
}
