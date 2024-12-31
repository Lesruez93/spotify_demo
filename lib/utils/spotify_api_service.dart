import 'dart:convert';
import 'package:dio/dio.dart';

class SpotifyApi {
  final String clientId = 'c0161aa4e8b144a0ac31ac40494e0de4'; // Replace with your client ID
  final String clientSecret = '0ad6f4c4203843e1b3537816bb8d044f'; // Replace with your client secret
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
