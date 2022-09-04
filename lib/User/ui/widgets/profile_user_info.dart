// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:demo_trips_app/User/model/user.dart';
import 'package:flutter/material.dart';
import 'button_bar.dart';

// ignore: must_be_immutable
class ProfileUserInfo extends StatelessWidget {
  User user;

  ProfileUserInfo({required this.user});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final name = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        user.name,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: "Red-Hat",
            fontWeight: FontWeight.bold,
            fontSize: 17.0),
      ),
    );

    final mail = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        user.email,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Colors.white38, fontFamily: "Red-Hat", fontSize: 13.0),
      ),
    );

    final userDetailsProfile = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[name, mail],
    );

    final photo = Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.white),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(user.photoURL))),
    );

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10.0, left: 20.0),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 20.0),
          child: Row(children: <Widget>[photo, userDetailsProfile]),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
          child: ButtonsBar(),
          // Row(
          //   children: [
          //     Expanded(child: bookmark),
          //     Expanded(child: images),
          //     Expanded(child: agregar),
          //     Expanded(child: mailButton),
          //     Expanded(child: profileButton)
          //   ],
          // )
        )
      ],
    );
  }
}
