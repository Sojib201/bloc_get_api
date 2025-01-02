import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable{}

class GetUserAllData extends UserEvent{
  @override
  // TODO: implement props
  List<Object?> get props =>[];

}

class onClick extends UserEvent{
  final int index;
  onClick(this.index);
  @override
  // TODO: implement props
  List<Object?> get props => [index];

}
