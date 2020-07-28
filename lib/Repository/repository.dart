import 'package:worldometer/Network/api_provider.dart';

class Repository {
  ApiBaseHelper _apiBaseHelper = new ApiBaseHelper();

  fetchData(String url) async {
    var response;
    try {
      response = await _apiBaseHelper.get(url);
    } catch (e) {
      print(e);
    }
    print(response);
  }
}
