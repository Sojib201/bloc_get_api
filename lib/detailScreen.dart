import 'package:bloc_get_api/bloc/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_bloc/details_bloc.dart';
import 'details_bloc/details_event.dart';
import 'details_bloc/details_state.dart';
import 'model/userModel.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<DetailsBloc>().add(detailsLoaded());
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          if (state is DetailsInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is DetailsLoaded) {
            return _view(context, state.user);
          }
          return Container();
        },
      ),
    );
  }

  Widget _view(BuildContext context, UserModel userdetail) {
    return Center(
      child: Card(
        color: Colors.grey,
        child: ListTile(
          title: Text(userdetail.name.toString()),
          subtitle: Text(userdetail.email.toString()),
        ),
      ),
    );
  }
}
