import 'package:dio/dio.dart';

import '../models/album/album.dart';
import '../models/artist/artist.dart';




class HomeService {
  late Dio dio;

  HomeService() {
    final String accessToken =
        'BQBdzgidpInmK64qxx9V7U0U5TMrJtQs6zk8vqCuUz49BVUcJDiiM8-I7c30x3eSWG59GTuWkvzTe7G3CW4dOwLuoC_UxqUogfVcArVqODLxYkMYwLWavClF8SHvX9TEV44I5IZaricTWsmuSZnZIA9H3J1rAGyTMdVbcaO-eGTayQIy6i8Xdx0Yk9NZIs3wS4BThCD4Iva4F-d-TOloGkzUjQ-HdI-NxcYIs-ecBJnl-qRFAOlsAiPCKOOOq7-wipUl9LxxNE9YIPCQDKH2lxS98ybLciW8s1k8Q4JNVsfrAPNRad1-WEfjUrFQl06L-LOfoZXpfBo6DMLEDbQx79oydeKgaO4';

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
