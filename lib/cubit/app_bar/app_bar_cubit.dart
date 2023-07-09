// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

class AppBarCubit extends Cubit<double> {
  AppBarCubit() : super(0);

  void setOffset(double offset) => emit(offset);
  // double _scrollOffset = 0.0;
}

// event --> bloc --> state (based on the state we can render the UI)
// bloc --> state (based on the state we can render the UI)
// SO CUBIT IS A STATE MANAGEMENT TOOL OF BLOC THAT IS USED TO MANAGE THE APP (UI)