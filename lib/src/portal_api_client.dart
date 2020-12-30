import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:regimental_app/repos/models/user.dart';

class PortalApiClient {
  static const baseUrl = "";
  final http.Client httpClient;

  PortalApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<User> getUser(String id) async {
    final userUrl = '';
    final userResponse = await this.httpClient.get(userUrl);

    if (userResponse.statusCode != 200) {
      throw Exception('Error getting user for this ID');
    }

    return userResponse.body as User;
  }
}
