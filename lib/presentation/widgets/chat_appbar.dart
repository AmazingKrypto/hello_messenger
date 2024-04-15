import 'package:flutter/material.dart';
import 'package:hello_messenger/utils/constants/palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;

  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var textHeading = TextStyle(
        color: Palette.primaryTextColorLight,
        fontSize: 20); // Text style for the name
    var textStyle = TextStyle(
        color:
            Palette.secondaryTextColorLight); // Text style for everything else

    double width =
        MediaQuery.of(context).size.width; // calculate the screen width
    return Container(
        decoration: const BoxDecoration(boxShadow: [
          //adds a shadow to the appbar
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
          )
        ]),
        child: Container(
            color: Palette.selfMessageBackgroundColor,
            child: Row(children: <Widget>[
              Expanded(
                  //we're dividing the appbar into 7 : 3 ratio. 7 is for content and 3 is for the display picture.
                  flex: 7,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                          height: 70 - (width * .06),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: Icon(
                                    Icons.attach_file,
                                    color: Palette.secondaryColor,
                                  ))),
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('Amazing Krypto',
                                          style: textHeading),
                                      Text('@amazingkrypto', style: textStyle)
                                    ],
                                  )),
                            ],
                          )),
                      //second row containing the buttons for media
                      Container(
                          height: 23,
                          padding: const EdgeInsets.fromLTRB(20, 5, 5, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Photos',
                                style: textStyle,
                              ),
                              VerticalDivider(
                                width: 30,
                                color: Palette.primaryTextColorLight,
                              ),
                              Text(
                                'Videos',
                                style: textStyle,
                              ),
                              VerticalDivider(
                                width: 30,
                                color: Palette.primaryTextColorLight,
                              ),
                              Text('Files', style: textStyle)
                            ],
                          )),
                    ],
                  ))),
              //This is the display picture
              Expanded(
                  flex: 3,
                  child: Center(
                      child: CircleAvatar(
                    radius: (80 - (width * .06)) / 2,
                    backgroundImage: Image.asset(
                      'assets/images/user.png',
                    ).image,
                  ))),
            ])));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
