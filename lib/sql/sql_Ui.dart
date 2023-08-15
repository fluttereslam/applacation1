import 'package:flutter/material.dart';
import 'databasehelper.dart';
class FromSql extends StatefulWidget {
  const FromSql({Key? key}) : super(key: key);

  @override
  State<FromSql> createState() => _FromSqlState();
}


final dbHelper = databasehelp.instance;



class _FromSqlState extends State<FromSql> {




  @override
  void initState() {
    super.initState();
    dbHelper.database;

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                _insert();
              },
              child: Text("insert",style: TextStyle(fontSize: 20),)),
            ElevatedButton(
                onPressed: (){
                  _delete();
                },
                child: Text("delete",style: TextStyle(fontSize: 20),)),
            ElevatedButton(
                onPressed: (){
                  _update();
                },
                child: Text("update",style: TextStyle(fontSize: 20),)),

          ],
        ),
      ),
    );
  }
}
void _insert () async{
  Map<String,dynamic> row={
    databasehelp.columnName:"resdu",
    databasehelp.columnPrice : 22,
  };
  final id= await dbHelper.insert(row);
  print('insertedRowIs:$id');

}


void _delete() async{

  final id = await dbHelper.queryRowCount();
  final rowDeleted = await dbHelper.delete(id!);
  print('deleted $rowDeleted row(s):row $id');

}

void _update() async{
  Map<String,dynamic> row= {
    databasehelp.columnId : 1,
    databasehelp.columnName: "hany",
    databasehelp.columnPrice: 28,
  };
final rowaffected = await dbHelper.update(row);
print("updated $rowaffected row(s)");
}

