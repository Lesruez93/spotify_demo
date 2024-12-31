import 'package:dio/dio.dart';

import '../models/album/album.dart';




class HomeService {
  late Dio dio;

  HomeService() {
    final String accessToken =
        'BQANSyvbsimktGTHZ0N49tl1zR9Reov76YaMR1tzyUQPEZfYxC45IRxBEYTatlEb-BrtFdVL9JTl4JX6zaPLY-WaGOjMaA0ywgZgZX1EpV9KoTAFGGHXb1ROmPSlKMgWBVvYEqqvw_hLZDnNk_SE_b-kjw16bJ8ccwTLQ0B0_-Nec_v4dsJXLn1-kO0ezUhPiLTzoOYOLurOXRRcBsyofSCSQ3gBDyw1Bdn1Ma3Ybq3YQvE7PrpjWxpBLIjMgbCum1FSxC54fETaN7WluiA-7Iw8gAs_9a3uPqUl9krCuMCf1CrMWrKv5gJgmR3lNNSKmyaQdDNVaPJgdKCtsoJiA_8Y8bQv4RY';

    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.spotify.com/v1/',
        // Replace with your API base URL
        headers: {
          'Authorization': 'Bearer $accessToken',
          // Replace with your token if needed
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  Future<List<Album>> fetchAlbums(q) async {
    try {
      var response = await dio.get('search?q=$q&type=album');

      if (response.statusCode == 200) {
        // Extract and parse album data
        final items = response.data['albums']['items'] as List;
        return items
            .map((json) => Album.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load albums');
      }
    } catch (e) {
      throw Exception('Error fetching albums: $e');
    }
  }

  Future<List<Album>> fetchArtist(q) async {
    try {
      var response = await dio.get('search?q=$q&type=artists');

      if (response.statusCode == 200) {
        // Extract and parse album data
        final items = response.data['albums']['items'] as List;
        return items
            .map((json) => Album.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load artists');
      }
    } catch (e) {
      throw Exception('Error fetching artists: $e');
    }
  }
}
