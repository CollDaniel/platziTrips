import 'package:demo_trips_app/User/bloc/bloc_user.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../widgets/profile_user_info.dart';
import 'package:demo_trips_app/User/model/user.dart';

// ignore: must_be_immutable
class HeaderProfile extends StatelessWidget {
  late UserBloc userBloc;
  late User user;
  final title = "Profile";
  HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const CircularProgressIndicator();
          case ConnectionState.none:
            return const CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );

    /*
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10.0, left: 20.0),
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Red-Hat",
                fontWeight: FontWeight.bold),
          ),
        ),
        const ProfileUserInfo(
          pathImage: "assets/images/persona.png",
          userName: "Daniel Coll",
          userMail: "danielcollramirez@gmail.com",
        ),
      ],
    ); */
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      // ignore: avoid_print
      print("No loggeado");
      return Container(
        margin: const EdgeInsets.only(top: 10.0, left: 20.0),
        child: Column(
          children: const <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información. Haz Loggin")
          ],
        ),
      );
    } else {
      print("Loggeado");

      print(snapshot.data);
      user = User(
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoURL: snapshot.data.photoURL,
      );
      const title = Text(
        "Profile",
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Red-Hat",
            fontWeight: FontWeight.bold),
      );

      return Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0,
        ),
        child: Column(
          children: <Widget>[
            Row(children: const <Widget>[title]),
            ProfileUserInfo(user: user)
          ],
        ),
      );
    }
  }
}
