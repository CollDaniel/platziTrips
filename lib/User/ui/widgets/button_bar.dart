import 'package:demo_trips_app/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  //const ButtonsBar({Key? key}) : super(key: key);

  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            CircleButton(
              true,
              Icons.turned_in_not,
              20.0,
              const Color.fromRGBO(255, 255, 255, 1),
              onPressed: () {},
            ),
            CircleButton(
              true,
              Icons.card_travel,
              20.0,
              const Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () {},
            ),
            CircleButton(
              false,
              Icons.add,
              40.0,
              const Color.fromRGBO(255, 255, 255, 1),
              onPressed: () {},
            ),
            CircleButton(
              true,
              Icons.mail_outline,
              20.0,
              const Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () {},
            ),
            CircleButton(
              true,
              Icons.exit_to_app_outlined,
              20.0,
              const Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () {
                userBloc.signOut();
              },
            )
          ],
        ));
  }
}
