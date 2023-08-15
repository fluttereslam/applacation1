import 'package:flutter/material.dart';
import 'Users.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {

 // List<String> users = ["Ahmed" ,"mohamed" ,"mona"];
  List<Users> usersList = [];

  @override
  void initState() {
    super.initState();
    //createUser();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title:
          Text("My list "),),
        floatingActionButton:
        FloatingActionButton(
          child: Icon(
              Icons.add
          ),
          onPressed: () {
            setState((){
              usersList.add(Users(name: "me", image: ""));

            });
          },

        ),
        body: ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (BuildContext context, int position) {
            return    Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 6),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child:
                    Row(
                      children: [
                        //Image

                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.green,
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Image.asset(
                                  "images/user.png", width: 200,
                                  height: 200,
                                  fit: BoxFit.fill,),

                              )
                          ),
                        ),
                        // name
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(child:
                        Text(usersList[position].name!)),
                        // icon
                        InkWell(
                          onTap: (){
                            setState(() {
                              print("    pppppppppp");
                            });
                          },
                          child: Icon(Icons.delete),
                        )
                      ],
                    )),

              ),
            );
          },)


    );
  }



  createUser(){
    usersList = List<Users>.generate(5, (index) => Users(name: "User  $index", image: "Image"));
  }
}


