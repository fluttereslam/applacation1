import 'package:http/http.dart' as http;
import '../constants.dart';
import '../model/user_model.dart';

class ApiService{
  Future<List<UserModel>>  getitem()
  async {
    try{
      var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.usersEndpoint);
      var response = await  http.get(url);
      print(response.body);
      if(response.statusCode == 200){  //if it run succesfully

        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }

    }catch(e){
      print(e.toString());

    }
    return [];




  }
}
/*
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../model/user_model.dart';

class ApiService{
  Future<List<UserModel>>  getUser()
  async {
    try{
      ///  https://jsonplaceholder.typicode.com/users
      var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.usersEndpoint);
      var response = await  http.get(url);
      print(response.body);
      if(response.statusCode == 200){  //if it run succesfully

        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }

    }catch(e){
      print(e.toString());

    }
    return [];




  }
}*/