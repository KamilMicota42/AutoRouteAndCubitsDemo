import 'package:flutter_bloc/flutter_bloc.dart';

class NumberCubit extends Cubit<int> {
  NumberCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void reset() {
    emit(0);
  }
}
