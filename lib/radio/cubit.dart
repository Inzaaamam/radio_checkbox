import 'package:bloc/bloc.dart';
import 'package:ui_practices_app/radio/utail.dart';

class RadioCubit extends Cubit<SingingCharacter?> {
  RadioCubit() : super(SingingCharacter.lafayette);
  void selectCharacter(SingingCharacter? character) => emit(character);
}
