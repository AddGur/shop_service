import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationState {
  final int currentIndex;

  NavigationState(this.currentIndex);
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(0));

  void changeTab(int index) {
    emit(NavigationState(index));
  }
}
