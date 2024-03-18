import 'package:get_it/get_it.dart';
import 'package:hero_flutter/share/enviropment/base_url.dart';
import 'package:hero_flutter/share/http/common_http.dart';

GetIt getIt = GetIt.instance;

class AppModule {
  Future<void> startApp() async {
    getIt.registerLazySingleton(() => CommonHttp(baseUrl: BaseUrl.baseUrl));
  }
}
