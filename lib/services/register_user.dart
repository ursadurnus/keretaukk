import 'dart:convert';
import 'package:kereta3/models/response_data_map.dart';
import 'package:kereta3/services/url.dart' as url;
import 'package:http/http.dart' as http;


class UserService {
  Future registerUser(datas) async {
    var uri = Uri.parse(url.BaseUrl + "/customer/register");
    Map<String, String> headers = {
      "app-key": '792bc09bcaa01c118c92f35f170bab7185035e7c',
      "Content-type":'application/json'
    };

    var register = await http.post(uri, body: json.encode(datas), headers: headers);

    var data = json.decode(register.body);

    if (register.statusCode == 200) {
      
      if (data["success"] == true) {
        ResponseDataMap response = ResponseDataMap(
            status: true, message: data['message'], data: data['data']);
        return response;
      } else {
        
        ResponseDataMap response =
            ResponseDataMap(status: false, message: data['message'], data: null);
        return response;
      }
    } else {
      ResponseDataMap response = ResponseDataMap(
          status: false,
          message:
              "gagal menambah user dengan code error ${register.statusCode} $data", data: null);
      return response;
    }
  }
}
