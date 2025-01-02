import 'package:flutter_bloc/flutter_bloc.dart';

import '../user/user_bloc.dart';
import 'details_event.dart';
import 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final UserBloc userBloc = UserBloc();

  DetailsBloc() : super(DetailsInitial()) {
    on<detailsLoaded>((event, emit) {
      emit(DetailsLoaded(userBloc.userModelList[userBloc.index]));

    });
  }
}
