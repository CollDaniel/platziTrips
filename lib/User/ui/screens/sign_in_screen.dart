import 'package:demo_trips_app/User/bloc/bloc_user.dart';
import 'package:demo_trips_app/demo_trips_cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../../../widgets/gradient_back.dart';
import '../../../widgets/button_green.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  late UserBloc userBloc;
  late AsyncSnapshot snapshot;
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    // TODO: implement build
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return const DemoTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      GradientBack(title: "", height: MediaQuery.of(context).size.height),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome\nThis is your Travel App",
            style: TextStyle(
                fontFamily: "Red-Hat",
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          ButtonGreen(
              width: 250.0,
              height: 50.0,
              text: "Login with Gmail",
              margin: const EdgeInsets.only(top: 30.0),
              onPressed: () {
                userBloc.signIn().then((UserCredential user) =>
                    print("El usuario es ${user.user?.uid}"));
              }),
          SignInButton(
            Buttons.Google,
            text: "Sign up with Google",
            onPressed: () {},
          )
        ],
      ),
    ]));
  }
}
