import 'package:bloc_get_api/model/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final UserModel usermodelList;
  const DetailScreen(this.usermodelList, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
            usermodelList.name.toString()

            )
          ],
        ),
      ),
    );
  }
}
