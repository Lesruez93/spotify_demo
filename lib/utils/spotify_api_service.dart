import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SpotifyApi {
  final String clientId = dotenv.env['CLIENT_ID'] ?? '';
  final String clientSecret = dotenv.env['CLIENT_SECRET'] ?? '';
  final Dio dio = Dio();

  Future<String?> getAccessToken() async {
    const String tokenUrl = 'https://accounts.spotify.com/api/token';

    try {
      // Encode client ID and client secret in Base64
      String credentials = base64.encode(utf8.encode('$clientId:$clientSecret'));

      // Make the POST request
      Response response = await dio.post(
        tokenUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': 'Basic $credentials',
          },
        ),
        data: {
          'grant_type': 'client_credentials',
        },
      );

      // Parse and return the access token
      if (response.statusCode == 200) {
        return response.data['access_token'];
      } else {
        print('Error: ${response.statusMessage}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
