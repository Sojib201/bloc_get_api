import 'package:equatable/equatable.dart';

import '../../model/userModel.dart';


abstract class DetailsState extends Equatable {}

class DetailsInitial extends DetailsState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DetailsLoaded extends DetailsState {
 UserModel user;
  DetailsLoaded(this.user);

  @override
  // TODO: implement props
  List<Object?> get props => [user];
}
