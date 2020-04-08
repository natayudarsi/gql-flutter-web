import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:reverse_test/env.dart';

@Bind.toType(RestClient)
@injectable
abstract class RestClientBase with DioMixin implements Dio {
  Dio setup();
}

@lazySingleton
@injectable
class RestClient extends RestClientBase {
  Dio client = Dio();

  RestClient() {
    client.options.baseUrl = environment['baseUrl'];
    client.options.headers['content-Type'] = 'application/json';
  }

  @override
  Dio setup() {
    return client;
  }
}
