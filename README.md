# SIES Library Catalog
 
Prepared by
 
1.	[@kriticalflare](https://github.com/kriticalflare)
2.	[@barath121](https://github.com/barath121)      	
3. [@sasukeuzumaki31](https://github.com/sasukeuzumaki31)       	
4. [@mithil467](https://github.com/mithil467)

### 1. Introduction: -
 
SIES Library Catalog is a free book catalog application with an intuitive interface, available for use with Android devices. This app lets you check details of all the books available in GST library, and is not limited to any number of entries (hence very extendable).
The app and api is free and open source, which means anyone is freely licensed to use, copy, study, and change the software in any way, and the source code is openly shared (here) so that people are encouraged to voluntarily improve the design of the software, under the GPL license.
The student can scroll to have a look at all the available books, or can enter details manually to search for a particular book (or list of books) with any one of the significant features. He / She can maintain a personal list of favourites to view them offline on the go. The app also provides a share feature which allows the user to share those books with others.

 ### 2. Need of the project :-
 
The main purpose of this application is to save the time spent by the students in the library searching for quality books, by
providing them with a list of available books on their mobile device. This is an attempt to encourage students to check out the 
latest available books on a particular topic, as students refrain from visiting the library and spending some time looking at 
the available options as we are living in a busy environment. It will also save the students money as they can find out if the 
library has the book, rather than buying a new one. Sharing of books is a very important feature that we introduced as it 
brings liveliness to the product and doesn’t restrict the app to a sole device.

### 3. Basic Features :-

●	Searching
Books can be searched by Title,Author,Publisher and ISBN 
●	Sorting
The results of search can be sorted according to date or quantity

●	Pagination
The results of the search are paginated. Which gives more optimized results and also infinite scrolling on home page
●	Sharing
Sharing of books is a very important feature which allows for sharing your favourites  which makes this app social friendly.
●	Favourite
Favourites act as a bookmark so you can save the books locally, responsible for faster, offline access. 

### 4. Technology Used :-

Based on the powerful open-source UI software development kit, Flutter, SIES Library Catalog is written in Dart, which in 
itself is a fast, object-oriented programming language.
Flutter provides its own widgets, drawn with its own high-performance rendering engine.
Flutter is a cross-platform UI toolkit which enables us to make web/android/iOS/desktop with the same codebase, allowing us to 
make the app more accessible with less effort.
The data is provided by the API barathlibrary.herokuapp.com, which is based on Node, and uses Express, Mongoose, Mongodb and 
Heroku. This is a vital part of the app. It is also open source (source code available [here](https://github.com/barath121/Library-api)).  
The raw data we received from the Library was a spreadsheet, which needed a lot of refactoring and cleanup. We achieved this by 
writing a csv parser in C++ and developing efficient algorithms. The code for this is available [here](https://github.com/Mithil467/SIES-Library-Catalog-Helper-Files) (though not directly 
related to the project,  we think, it was a major step to make a performance efficient app). We were able to remove around 
20,000 redundant entries (80% data). 

### 5.	Architecture :-
![](https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/image5.png)

### 6. Results :-
#### ● HOME PAGE
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/image7.jpg" width="420" height="720">
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/home.gif" width="420" height="720">

#### ● SEARCH
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/image9.jpg" width="420" height="720">
 
#### ● BOOK DETAILS
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/image8.jpg" width="420" height="720">

#### ● SHARING
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/image2.jpg" width="420" height="720">

#### ● SORTING
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/image1.jpg" width="420" height="720">

#### ● FAVOURITES
 <img src="https://github.com/kriticalflare/SIES-Library/blob/master/demo/images/fav.gif" width="420" height="720">
 
### 7.	Conclusion :-
The SIES library catalog is a very user-friendly application which would surely help students to explore our library in a 
different, easily accessible and inexhaustible manner. I hope you enjoy this app as much as we enjoyed coding it.
