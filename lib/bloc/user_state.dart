import 'package:equatable/equatable.dart';

import '../model/userModel.dart';

abstract class UserState extends Equatable {}

// class UserInit extends UserState {
//   @override
//   // TODO: implement props
//   List<Object?> get props => [];
// }

class UserLoading extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserDataLoaded extends UserState {
  List<UserModel> userModelList;
  UserDataLoaded(this.userModelList);

  @override
  // TODO: implement props
  List<Object?> get props => [userModelList];
}

class UserError extends UserState {
  String message;
  UserError(this.message);
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
