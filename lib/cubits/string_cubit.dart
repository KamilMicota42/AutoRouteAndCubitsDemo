import 'package:flutter_bloc/flutter_bloc.dart';

class StringCubit extends Cubit<String> {
  StringCubit() : super('');

  void setTheString(String string) {
    emit(string);
  }

  void reset() {
    emit('');
  }
}
