import 'package:bloc_get_api/bloc/user_bloc.dart';
import 'package:bloc_get_api/bloc/user_event.dart';
import 'package:bloc_get_api/bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'detailScreen.dart';
import 'model/userModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserBloc>().add(GetUserAllData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Bloc Get API Calling'),
      ),
      body: BlocBuilder<UserBloc, UserState>(

        builder: (context, state) {
          if (state is UserLoading) {
            print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserError) {
            return Center(child: Text(state.message));
          }
          if (state is UserDataLoaded) {
            return _view(context, state.userModelList);
          }
          return Container();
        },
      ),
    );
  }

  Widget _view(BuildContext context, List<UserModel> usermodelList) {
    return ListView.builder(
        itemCount: usermodelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Card(
              color: Colors.grey,
              elevation: 6,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(usermodelList[index]),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    usermodelList[index].name.toString(),
                  ),
                  subtitle: Text(
                    usermodelList[index].email.toString(),
                  ),
                  leading: Text(
                    usermodelList[index].id.toString(),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
