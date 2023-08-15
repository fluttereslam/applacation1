
import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../sevices/api_servises.dart';

class UserApisList extends StatefulWidget {
  const UserApisList({Key? key}) : super(key: key);

  @override
  State<UserApisList> createState() => _UserApisListState();
}

class _UserApisListState extends State<UserApisList> {

  late List<UserModel> _cartitem = [];


  @override
  void initState() {
    super.initState();
    getUsers();

  }

  getUsers() async{
    _cartitem=  await ApiService().getitem();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState((){
        print("${_cartitem}");
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  Text("fetch users "),
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.play_arrow),

        onPressed: (){
          getUsers();
        },
      ),
      body: _cartitem ==  null || _cartitem.isEmpty?

      Center(
        child: CircularProgressIndicator(),
      )

          :

      ListView.builder(
          itemCount: _cartitem.length ,
          itemBuilder: ( BuildContext context  , int index){

            return Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_cartitem[index].id.toString()),
                      Text(_cartitem[index].price.toString()),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_cartitem[index].title.toString()),
                      Text(_cartitem[index].category.toString()),

                    ],
                  ),


                ],
              ),
            );
          }),
    );
  }
}


/*
import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../sevices/api_servises.dart';

class UserApisList extends StatefulWidget {
  const UserApisList({Key? key}) : super(key: key);

  @override
  State<UserApisList> createState() => _UserApisListState();
}

class _UserApisListState extends State<UserApisList> {

  late List<UserModel> _userModel = [];


  @override
  void initState() {
    super.initState();
    getUsers();

  }

  getUsers() async{
    _userModel=  await ApiService().getUser();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState((){});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  Text("fetch users "),
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.play_arrow),

        onPressed: (){
          getUsers();
        },
      ),
      body: _userModel==  null || _userModel.isEmpty?

      Center(
        child: CircularProgressIndicator(),
      )
          :

      ListView.builder(
          itemCount: _userModel.length ,
          itemBuilder: ( BuildContext context  , int index){

            return Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_userModel[index].id.toString()),
                      Text(_userModel[index].username.toString()),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_userModel[index].email.toString()),
                      Text(_userModel[index].website.toString()),

                    ],
                  ),


                ],
              ),
            );
          }),
    );
  }
}*/