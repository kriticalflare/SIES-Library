class Book {
  String status;
  Data data;

  Book({this.status, this.data});

  Book.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<Results> results;

  Data({this.results});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String sId;
  int sN;
  String author1;
  String author2;
  String author3;
  String title;
  String edition;
  int year;
  String publisher;
  String pages;
  String language;
  String iSBNISSN;
  int quantity;
  int iV;

  Results(
      {this.sId,
        this.sN,
        this.author1,
        this.author2,
        this.author3,
        this.title,
        this.edition,
        this.year,
        this.publisher,
        this.pages,
        this.language,
        this.iSBNISSN,
        this.quantity,
        this.iV});

  Results.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sN = json['SN'];
    author1 = json['Author1'];
    author2 = json['Author2'];
    author3 = json['Author3'];
    title = json['Title'];
    edition = json['Edition'];
    year = json['Year'];
    publisher = json['Publisher'];
    pages = json['Pages'];
    language = json['Language'];
    iSBNISSN = json['ISBN/ISSN'];
    quantity = json['Quantity'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['SN'] = this.sN;
    data['Author1'] = this.author1;
    data['Author2'] = this.author2;
    data['Author3'] = this.author3;
    data['Title'] = this.title;
    data['Edition'] = this.edition;
    data['Year'] = this.year;
    data['Publisher'] = this.publisher;
    data['Pages'] = this.pages;
    data['Language'] = this.language;
    data['ISBN/ISSN'] = this.iSBNISSN;
    data['Quantity'] = this.quantity;
    data['__v'] = this.iV;
    return data;
  }
}
