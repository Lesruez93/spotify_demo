import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:spotify_demo/views/home/models/album/paginate_album.dart';

import '../models/album/album.dart';
import '../models/artist/artist.dart';




class HomeService {
  late Dio dio;

  HomeService() {
    final getStorage = GetStorage();

    var  accessToken = getStorage.read('token');

    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.spotify.com/v1/',
        headers: {
          'Authorization': 'Bearer $accessToken',

          'Content-Type': 'application/json',
        },
      ),
    );
  }



  Future<PaginateAlbum> fetchPaginatedAlbums(String query, {String? nextUrl}) async {
    final url = nextUrl ?? '/search?q=$query&type=album';
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      return PaginateAlbum.fromJson(response.data['albums']);
    } else {
      throw Exception('Failed to fetch albums');
    }
  }

  Future<List<Artist>> fetchArtist(q) async {
    try {
      var response = await dio.get('search?q=$q&type=artist');

      if (response.statusCode == 200) {
        // Extract and parse artist data
        final items = response.data['artists']['items'] as List;
        return items
            .map((json) => Artist.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load artists');
      }
    } catch (e) {
      throw Exception('Error fetching artists: $e');
    }
  }
}
