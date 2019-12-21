import 'package:flutter/material.dart';
import 'package:sies_library/components/BookListItem.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/services/library_service.dart';
import 'package:sies_library/util/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bookList = [];
  bool isLoading;
  int _pageNumber;
  ScrollController sc;
  String searchType;

  void getResults(int pageNumber) async {
    LibraryService libraryService = LibraryService();
    List resultList = await libraryService.getSearchResult(
        SearchType.TITLE, '', '20', '$pageNumber');
    bookList.addAll(resultList);
    isLoading = false;
    setState(() {});
    for (Results book in bookList) {
      print('id :${book.sId} ${book.title}');
    }
  }

  @override
  void initState() {
    super.initState();
    isLoading = true;
    _pageNumber = 0;
    getResults(++_pageNumber);
    searchType = SearchType.TITLE;
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new CircularProgressIndicator(),
      ),
    );
  }

  Widget _createListView() {
    sc = ScrollController();
    sc.addListener(() {
      if (sc.position.maxScrollExtent == sc.position.pixels) {
        if (isLoading == false) {
          _pageNumber = _pageNumber + 1;
          getResults(_pageNumber);
          // Perform event when user reach at the end of list (e.g. do Api call)
        }
      }
    });
    return ListView.builder(
        controller: sc,
        itemCount: bookList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == bookList.length) {
            return ListTile(
              title: _buildProgressIndicator(),
            );
          } else {
            return BookListItem(
              book: bookList[index],
              index: index,
            );
          }
        });
  }

  @override
  void dispose() {
    sc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sies Library'),
      ),
      body: SafeArea(
        child: Container(
            child: bookList.isEmpty
                ? Center(child: CircularProgressIndicator())
                : _createListView()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search,
        ),
        onPressed: () {
//          getResults(_pageNumber);
          showSearch(context: context, delegate: BookSearch(searchType));
        },
      ),
    );
  }
}

class BookSearch extends SearchDelegate {
  String _searchType;

  BookSearch(
    this._searchType,
  );

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
        ),
        color: Colors.black,
        onPressed: () {
          query = "";
        },
      ),
      IconButton(
        icon: Icon(Icons.tune),
        color: Colors.black,
        onPressed: () {
          _showDialog(context);
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return FutureBuilder(
      future: searchBooks(query, _searchType),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          return Center(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "We couldn't find what you were looking for.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        } else {
          List<Results> results = snapshot.data;
          if (results.isEmpty) {
            return Center(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "We couldn't find what you were looking for.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text(results[index].title),
                  onTap: () {
//                  Navigator.pushReplacement(context, MaterialPageRoute(
//                      builder: (context){
//                        return DetailsPage(pokemon: pokemons[index],);
//                      }
//                  ));
                  },
                );
              },
            );
          }
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Center(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Tip: Tap the icon on top left to search according to Title, Author, Publisher etc",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }

  Future<List<Results>> searchBooks(String query, String searchType) async {
    LibraryService libraryService = LibraryService();
    List resultList =
        await libraryService.getSearchResult(searchType, query, '25', '1');
    print(resultList);
    return resultList;
  }

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Search Filter"),
          content: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Search by: '),
                    StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return searchTypeDropdown(setState);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  DropdownButton<String> searchTypeDropdown(StateSetter setState) {
    List<DropdownMenuItem<String>> dropDownMenuItems = [];
    List searchTypeList = [
      SearchType.TITLE,
      SearchType.AUTHOR,
      SearchType.PUBLISHER
    ];
    for (String type in searchTypeList) {
      var newItem = DropdownMenuItem(
        child: Text(type),
        value: type,
      );
      dropDownMenuItems.add(newItem);
    }

    return DropdownButton<String>(
      value: _searchType,
      items: dropDownMenuItems,
      onChanged: (value) {
        setState(() {
          _searchType = value;
        });
        //TODO: set new Search type. Provider Time ?
      },
    );
  }
}
