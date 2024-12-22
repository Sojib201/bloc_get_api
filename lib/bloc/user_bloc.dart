import 'package:bloc_get_api/bloc/user_event.dart';
import 'package:bloc_get_api/bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  UserBloc():super(UserInit()){

  }
}