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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sId != null) {
      map['s_id'] = Variable<String>(sId);
    }
    if (!nullToAbsent || sN != null) {
      map['s_n'] = Variable<int>(sN);
    }
    if (!nullToAbsent || author1 != null) {
      map['author1'] = Variable<String>(author1);
    }
    if (!nullToAbsent || author2 != null) {
      map['author2'] = Variable<String>(author2);
    }
    if (!nullToAbsent || author3 != null) {
      map['author3'] = Variable<String>(author3);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || edition != null) {
      map['edition'] = Variable<String>(edition);
    }
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || publisher != null) {
      map['publisher'] = Variable<String>(publisher);
    }
    if (!nullToAbsent || pages != null) {
      map['pages'] = Variable<String>(pages);
    }
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    if (!nullToAbsent || iSBNISSN != null) {
      map['i_s_b_n_i_s_s_n'] = Variable<String>(iSBNISSN);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    if (!nullToAbsent || iV != null) {
      map['i_v'] = Variable<int>(iV);
    }
    return map;
  }

  FavouritesCompanion toCompanion(bool nullToAbsent) {
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

  factory Favourite.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  static Insertable<Favourite> custom({
    Expression<String> sId,
    Expression<int> sN,
    Expression<String> author1,
    Expression<String> author2,
    Expression<String> author3,
    Expression<String> title,
    Expression<String> edition,
    Expression<int> year,
    Expression<String> publisher,
    Expression<String> pages,
    Expression<String> language,
    Expression<String> iSBNISSN,
    Expression<int> quantity,
    Expression<int> iV,
  }) {
    return RawValuesInsertable({
      if (sId != null) 's_id': sId,
      if (sN != null) 's_n': sN,
      if (author1 != null) 'author1': author1,
      if (author2 != null) 'author2': author2,
      if (author3 != null) 'author3': author3,
      if (title != null) 'title': title,
      if (edition != null) 'edition': edition,
      if (year != null) 'year': year,
      if (publisher != null) 'publisher': publisher,
      if (pages != null) 'pages': pages,
      if (language != null) 'language': language,
      if (iSBNISSN != null) 'i_s_b_n_i_s_s_n': iSBNISSN,
      if (quantity != null) 'quantity': quantity,
      if (iV != null) 'i_v': iV,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sId.present) {
      map['s_id'] = Variable<String>(sId.value);
    }
    if (sN.present) {
      map['s_n'] = Variable<int>(sN.value);
    }
    if (author1.present) {
      map['author1'] = Variable<String>(author1.value);
    }
    if (author2.present) {
      map['author2'] = Variable<String>(author2.value);
    }
    if (author3.present) {
      map['author3'] = Variable<String>(author3.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (edition.present) {
      map['edition'] = Variable<String>(edition.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (publisher.present) {
      map['publisher'] = Variable<String>(publisher.value);
    }
    if (pages.present) {
      map['pages'] = Variable<String>(pages.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (iSBNISSN.present) {
      map['i_s_b_n_i_s_s_n'] = Variable<String>(iSBNISSN.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (iV.present) {
      map['i_v'] = Variable<int>(iV.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavouritesCompanion(')
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
  VerificationContext validateIntegrity(Insertable<Favourite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('s_id')) {
      context.handle(
          _sIdMeta, sId.isAcceptableOrUnknown(data['s_id'], _sIdMeta));
    } else if (isInserting) {
      context.missing(_sIdMeta);
    }
    if (data.containsKey('s_n')) {
      context.handle(_sNMeta, sN.isAcceptableOrUnknown(data['s_n'], _sNMeta));
    }
    if (data.containsKey('author1')) {
      context.handle(_author1Meta,
          author1.isAcceptableOrUnknown(data['author1'], _author1Meta));
    }
    if (data.containsKey('author2')) {
      context.handle(_author2Meta,
          author2.isAcceptableOrUnknown(data['author2'], _author2Meta));
    }
    if (data.containsKey('author3')) {
      context.handle(_author3Meta,
          author3.isAcceptableOrUnknown(data['author3'], _author3Meta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('edition')) {
      context.handle(_editionMeta,
          edition.isAcceptableOrUnknown(data['edition'], _editionMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year'], _yearMeta));
    }
    if (data.containsKey('publisher')) {
      context.handle(_publisherMeta,
          publisher.isAcceptableOrUnknown(data['publisher'], _publisherMeta));
    }
    if (data.containsKey('pages')) {
      context.handle(
          _pagesMeta, pages.isAcceptableOrUnknown(data['pages'], _pagesMeta));
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language'], _languageMeta));
    }
    if (data.containsKey('i_s_b_n_i_s_s_n')) {
      context.handle(
          _iSBNISSNMeta,
          iSBNISSN.isAcceptableOrUnknown(
              data['i_s_b_n_i_s_s_n'], _iSBNISSNMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity'], _quantityMeta));
    }
    if (data.containsKey('i_v')) {
      context.handle(_iVMeta, iV.isAcceptableOrUnknown(data['i_v'], _iVMeta));
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
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favourites];
}
