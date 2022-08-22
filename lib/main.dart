import 'package:demo_trips_app/demo_trips_cupertino.dart';
import 'User/ui/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'Place/bloc/bloc_place.dart';
import 'User/bloc/bloc_user.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: UserBloc(),
        child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Demo Trips App',
            home: SignInScreen())
        //home: DemoTripsCupertino())
        );
  }
}
