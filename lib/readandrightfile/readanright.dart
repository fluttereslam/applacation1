import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
class rightRead extends StatefulWidget {
  const rightRead({Key? key}) : super(key: key);

  @override
  State<rightRead> createState() => _rightReadState();
}

class _rightReadState extends State<rightRead> {
  String dataFromFile= "";
  @override
  void initState(){

    super.initState();
    writecontent();
    readecontent().then((value) =>setState ((){
      dataFromFile = value;

    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("load data"),
        
      ),
      body: Center(
        child: Column(
          children: [
            Text("data read fromfile:"),
            SizedBox(height: 30,),
            Text(dataFromFile,style: TextStyle(color: Colors.orange),),
          ],
        ),
      ),
      
    );
  }



  Future<String> get _localpath async{
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
   // File(directory.path+"/name.txt");
    return directory.path;
  }

  Future<File> get _localfile async{
    final path = await _localpath;
    return File("$path/myfile.text");
  }
  Future<File> writecontent ()async{
    final file = await _localfile;
    return file.writeAsString("hi eslam");
  }
  Future<String> readecontent ()async {
    try{
    final file = await _localfile;
   String content = await file.readAsString();
    return content;}
        catch(e){
      return "error in read content";
        }

  }

}
