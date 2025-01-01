import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:spotify_demo/utils/utils.dart';
import 'package:spotify_demo/views/home/models/album/paginate_album.dart';
import 'package:spotify_demo/views/home/models/artist/paginate_artist.dart';




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



  Future<PaginateArtist> fetchPaginatedArtist(String query, {String? nextUrl}) async {
    final url = nextUrl ?? 'search?q=$query&type=artist';
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      return PaginateArtist.fromJson(response.data['artists']);
    } else {
      throw Exception('Failed to fetch albums');
    }
  }



  Future<PaginateAlbum> fetchPaginatedAlbums(String query, {String? nextUrl}) async {
    final url = nextUrl ?? 'search?q=$query&type=album';

    if(await checkConnectivity()){

    }
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      response.data['albums']['items'].length;
      return PaginateAlbum.fromJson(response.data['albums']);
    } else {
      throw Exception('Failed to fetch albums');
    }
  }


}
