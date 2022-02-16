import 'package:conduit/conduit.dart';
import 'package:dio/dio.dart' as dio;
import 'package:backend/models/domain_availbable.dart';
import 'package:backend/models/resale_config.dart';

class WebsiteController extends ResourceController {
  ResaleConfig config;
  WebsiteController(this.config);
  @Operation.get('website')
  Future<Response> checkWebsite(@Bind.path('website') String website) async {
    final res = await dio.Dio().get(config.godaddy!.host! + '/v1/domains/available?domain='+ website! + "&checkType=FAST&forTransfer=false", options: dio.Options(headers: {
      'Authorization': 'sso-key ${config.godaddy!.clientId}:${config.godaddy!.clientSecret}'
    }));
    return Response.ok(res.data);
  }
}
