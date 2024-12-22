import 'package:bloc_get_api/bloc/user_event.dart';
import 'package:bloc_get_api/bloc/user_state.dart';
import 'package:bloc_get_api/model/userModel.dart';
import 'package:bloc_get_api/service/apiService.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  List<UserModel> userModelList = [];

  UserBloc() : super(UserLoading()) {
    on<GetUserAllData>((event, emit) async {
      Apiservice apiservice = Apiservice();
      try {
        userModelList = await apiservice.getData();
        emit(UserDataLoaded(userModelList));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}
