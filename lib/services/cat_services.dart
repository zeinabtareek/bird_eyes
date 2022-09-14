// import 'package:bird/helper/dio_integration.dart';
 import 'package:dio/dio.dart';

import '../constants/constants_url.dart';
import '../model/CustomModel.dart';

class CategoryServices {
  final dio = Dio();
  // final dio = DioUtilNew.dio;
  CustomerModel customModel = CustomerModel();

  getAllCategory() async {
    try {
      final response = await dio.get('${ConstantsURL.baseURL}getallcustomers');
      if (response.statusCode == 200) {
        print(response.data);
        customModel = CustomerModel.fromJson(response.data);
        print(customModel);
        return customModel;
      }
    } catch (e) {
      print(e);
    }
  }
}
