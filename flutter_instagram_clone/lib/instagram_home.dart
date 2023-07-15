import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/insta_body.dart';

class InstaHome extends StatelessWidget {
  final _appbarName = 'Instagram';
  final appbarTitleColor = Colors.white;
  // final containerColor = Colors.black;

//  const InstaHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appbarName,
          style: TextStyle(color: appbarTitleColor),
        ),
      ),
      body: InstaBody(),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: ''),
      ]),
    );
  }

  /* BottomNavigationBar ContainerMain() {
    return BottomNavigationBar(
      // backgroundColor: containerColor,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),
      ],
    );
  }

  InkWell buttonAccount() {
    return InkWell(
      child: Icon(
        Icons.account_box,
      ),
      onTap: () {},
    );
  }

  InkWell buttonFavorite() {
    return InkWell(
      child: Icon(
        Icons.favorite,
      ),
      onTap: () {},
    );
  }

  InkWell buttonAddBox() {
    return InkWell(
      child: Icon(
        Icons.add_box,
      ),
      onTap: () {},
    );
  }

  InkWell buttonSearch() {
    return InkWell(
      child: Icon(
        Icons.search,
      ),
      onTap: () {},
    );
  }

  InkWell buttonHome() {
    return InkWell(
      child: Icon(
        Icons.home,
      ),
      onTap: () {},
    );
  }*/
}
