import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sies_library/screens/favourites_page.dart';
import 'package:sies_library/screens/homepage.dart';
import 'package:sies_library/util/util_methods.dart';

import 'book_search_delegate.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  Key _homePageKey;
  Key _favouritesPageKey;
  PageStorageBucket _bucket;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    _bucket = PageStorageBucket();
    _homePageKey = PageStorageKey('homePage');
    _favouritesPageKey = PageStorageKey('favPage');

    HomePage homePage = HomePage(key: _homePageKey);
    FavouritesPage favouritesPage = FavouritesPage(key: _favouritesPageKey);
    pages = [homePage, favouritesPage];
    currentPage = homePage;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TypewriterAnimatedTextKit(
          text: ['SIES Library'],
          textStyle: TextStyle(
            fontSize: 18
          ),
          totalRepeatCount: double.maxFinite.toInt(),
          speed: Duration(milliseconds: 800),
          onTap: (){
            showAboutDialog(
                context: context,
                applicationName: 'Sies Library',
                applicationVersion: '2.0.0',
                applicationIcon: Image.asset('assets/appicon.png'),
                applicationLegalese:
                'App by @kriticalflare  \n\nUses icons from icons8.com',
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Center(
                          child: GestureDetector(
                              onTap: () {
                                UtilMethods.launchURL('https://github.com/kriticalflare/SIES-Library');
                              },
                              child: Image.asset(
                                'assets/github.png',
                                height: 70,
                                width: 70,
                              )),
                        ),
                      ),
                    ],
                  )
                ]);
          },
        ),
      ),
      body: PageStorage(
        bucket: _bucket,
        child: currentPage,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          showSearch(context: context, delegate: BookSearch());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //Left of the fab
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      if (currentPage != pages[0]) {
                        setState(() {
                          currentPage = pages[0];
                        });
                      }
                    },
                  ),
                ],
              ),
              //Right of the fab
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {
                      if (currentPage != pages[1]) {
                        setState(() {
                          currentPage = pages[1];
                        });
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
