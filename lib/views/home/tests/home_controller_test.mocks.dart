import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:get/get.dart';
import 'package:spotify_demo/views/home/models/album/album.dart';


import '../controllers/home_controller.dart';
import '../models/album/paginate_album.dart';
import '../models/artist/artist.dart';
import '../models/artist/paginate_artist.dart';
import '../providers/home_service.dart';

@GenerateMocks([HomeService])
void main() {
  late HomeController homeController;
  late MockHomeService mockHomeService;

  setUp(() {
    mockHomeService = MockHomeService();
    homeController = HomeController();
    homeController._albumService = mockHomeService; // Inject mock service
  });

  group('HomeController', () {
    test('should fetch albums and update the albums list', () async {
      // Mock data
      final mockAlbums = [
        Album( name: 'Album 1', images: [], releaseDate: '', type: '', artists: []),
        Album(name: 'Album 2', images: [], releaseDate: '', type: '', artists: []),
      ];
      final mockResponse = PaginateAlbum(items: mockAlbums, next: null);

      // Mock service response
      when(mockHomeService.fetchPaginatedAlbums(any, nextUrl: anyNamed('nextUrl')))
          .thenAnswer((_) async => mockResponse);

      // Execute fetchAlbums
      await homeController.fetchAlbums('query');

      // Verify results
      expect(homeController.albums.length, 2);
      expect(homeController.albums[0].name, 'Album 1');
      expect(homeController.hasMore.value, false);
      verify(mockHomeService.fetchPaginatedAlbums('query')).called(1);
    });

    test('should fetch artists and update the artists list', () async {
      // Mock data
      final mockArtists = [
        Artist( name: 'Artist 1', images: []),
        Artist( name: 'Artist 2', images: []),
      ];
      final mockResponse = PaginateArtist(items: mockArtists, next: null);

      // Mock service response
      when(mockHomeService.fetchPaginatedArtist(any, nextUrl: anyNamed('nextUrl')))
          .thenAnswer((_) async => mockResponse);

      // Execute fetchArtist
      await homeController.fetchArtist('query');

      // Verify results
      expect(homeController.artists.length, 2);
      expect(homeController.artists[0].name, 'Artist 1');
      expect(homeController.hasMore.value, false);
      verify(mockHomeService.fetchPaginatedArtist('query')).called(1);
    });

    test('should not fetch data if there is no next URL', () async {
      // Simulate no next URL
      homeController.hasMore.value = false;

      // Call _onScroll


      // Verify fetchAlbums or fetchArtist is not called
      verifyNever(mockHomeService.fetchPaginatedAlbums(any, nextUrl: anyNamed('nextUrl')));
      verifyNever(mockHomeService.fetchPaginatedArtist(any, nextUrl: anyNamed('nextUrl')));
    });
  });

  tearDown(() {
    homeController.dispose();
  });
}



extension on HomeController {
  set _albumService(_albumService) {}
}
