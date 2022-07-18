import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/screens/state/state.dart';

class MainCubit extends Cubit<MainState> {
   MainCubit() : super(HomeState());
}