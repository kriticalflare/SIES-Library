import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sies_library/components/BookListItem.dart';
import 'package:sies_library/providers/api_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController sc;

  @override
  void initState() {
    super.initState();
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new CircularProgressIndicator(),
      ),
    );
  }

  Widget _createListView(ApiProvider apiProvider) {
    sc = ScrollController();
    sc.addListener(() {
      if (sc.position.maxScrollExtent == sc.position.pixels) {
        if (apiProvider.isLoading == false) {
          apiProvider.getResults();
          // Perform event when user reach at the end of list (e.g. do Api call)
        }
      }
    });
    return ListView.builder(
        controller: sc,
        itemCount: apiProvider.bookList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == apiProvider.bookList.length) {
            return ListTile(
              title: _buildProgressIndicator(),
            );
          } else {
            return BookListItem(
              book: apiProvider.bookList[index],
              index: index,
              pop: false,
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
    return Consumer<ApiProvider>(
      builder: (context, apiProvider, _) {
        return Container(
            child: apiProvider.bookList.isEmpty
                ? ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[600],
                        highlightColor: Colors.grey[400],
                        child: ListTile(
                          leading: Container(
                            height: 24.0,
                            width: 24.0,
                            color: Colors.red,
                          ),
                          title: Container(
                            height: 24.0,
                            width: 70.0,
                            color: Colors.red, //Apparently shimmer doesnt work without specifying colour here
                          ),
                        ),
                      );
                    })
                : _createListView(apiProvider));
      },
    );
  }
}
