import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_practices_app/radio/cubit.dart';
import 'package:ui_practices_app/radio/utail.dart';

class RadioExample extends StatelessWidget {
  const RadioExample({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: Column(
          children: <Widget>[
            BlocBuilder<RadioCubit, SingingCharacter?>(
              builder: (context, state) {
                return ListTile(
                  title: const Text('Lafayette'),
                  leading: Radio<SingingCharacter>(
                    fillColor: WidgetStateProperty.all(Colors.red),
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    value: SingingCharacter.lafayette,
                    groupValue: state,
                    onChanged: (SingingCharacter? value) {
                      context.read<RadioCubit>().selectCharacter(value);
                    },
                  ),
                );
              },
            ),
            BlocBuilder<RadioCubit, SingingCharacter?>(
              builder: (context, state) {
                return ListTile(
                  title: const Text('Thomas Jefferson'),
                  leading: Radio<SingingCharacter>(
                    // fillColors is use to give specfic color to radio button here
                    fillColor: WidgetStateProperty.all(Colors.red),
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    value: SingingCharacter.jefferson,
                    groupValue: state,
                    onChanged: (SingingCharacter? value) {
                      context.read<RadioCubit>().selectCharacter(value);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
