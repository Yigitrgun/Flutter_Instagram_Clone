import 'package:flutter/material.dart';

import 'package:flutter_instagram_clone/insta_stories.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;
  final nameText = 'yigitrgun';

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        var column = Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: listPadding(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      containerStories(),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        nameText,
                        style: nameTextFontBold(),
                      )
                    ],
                  ),
                  iconMoreVert()
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Image.network(
                "https://images.pexels.com/photos/13967487/pexels-photo-13967487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      heartBrokenIcon(),
                      SizedBox(
                        width: 16.0,
                      ),
                      bubbleIcon(),
                      SizedBox(
                        width: 16.0,
                      ),
                      sendIcon(),
                      //  new Icon(FontAwesomeIcons.paperPlane),
                    ],
                  ),
                  //   new Icon(FontAwesomeIcons.bookmark)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "yigitrgun and 1881, others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GirlphotoContainer(),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment...",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
            )
          ],
        );
        return index == 0
            ? SizedBox(
                child: InstaStories(),
                height: deviceSize.height * 0.15,
              )
            : column;
      },
    );
  }

//-----------------------------------------------------------------------------------------
  TextStyle nameTextFontBold() => TextStyle(fontWeight: FontWeight.bold);

  Container GirlphotoContainer() {
    return new Container(
      height: 40.0,
      width: 40.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(fit: BoxFit.fill, image: girlImage()),
      ),
    );
  }

  NetworkImage girlImage() {
    return new NetworkImage(
        "https://images.pexels.com/photos/14982357/pexels-photo-14982357.jpeg?auto=compress&cs=tinysrgb&w=600");
  }

  Icon sendIcon() {
    return Icon(
      Icons.send,
    );
  }

  Icon bubbleIcon() {
    return new Icon(
      Icons.chat_bubble_outline_rounded,
    );
  }

  IconButton heartBrokenIcon() {
    return IconButton(
      icon: new Icon(isPressed ? Icons.favorite : Icons.heart_broken_outlined),
      color: isPressed ? Colors.red : Colors.black,
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
    );
  }

  IconButton iconMoreVert() {
    return IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: null,
    );
  }

  EdgeInsets listPadding() => const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0);
}

class containerStories extends StatelessWidget {
  const containerStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://images.pexels.com/photos/9039838/pexels-photo-9039838.jpeg?auto=compress&cs=tinysrgb&w=600")),
      ),
    );
  }
}
