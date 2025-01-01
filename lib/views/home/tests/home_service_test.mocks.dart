import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';


import '../models/album/paginate_album.dart';
import '../models/artist/paginate_artist.dart';
import '../providers/home_service.dart';





@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late HomeService homeService;

  setUp(() {
    mockDio = MockDio();
    homeService = HomeService();
    homeService.dio = mockDio;
  });

  group('HomeService', () {
    test('fetchPaginatedArtist returns PaginateArtist when successful', () async {
      // Mock response data
      const mockResponseData = {
        'artists': {
          'items': [],
          'next': null,
        },
      };

      // Configure Dio mock
      when(mockDio.get('search?q=artist_name&type=artist'))
          .thenAnswer((_) async => Response(
        data: mockResponseData,
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ));

      // Call the method
      final result =
      await homeService.fetchPaginatedArtist('artist_name');

      // Verify the response and method interactions
      expect(result, isA<PaginateArtist>());
      verify(mockDio.get('search?q=artist_name&type=artist')).called(1);
    });

    test('fetchPaginatedAlbums returns PaginateAlbum when successful', () async {
      // Mock response data
      const mockResponseData = {
        'albums': {
          'items': [],
          'next': null,
        },
      };

      // Configure Dio mock
      when(mockDio.get('search?q=album_name&type=album'))
          .thenAnswer((_) async => Response(
        data: mockResponseData,
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ));

      // Call the method
      final result =
      await homeService.fetchPaginatedAlbums('album_name');

      // Verify the response and method interactions
      expect(result, isA<PaginateAlbum>());
      verify(mockDio.get('search?q=album_name&type=album')).called(1);
    });

    test('fetchPaginatedArtist throws exception on failure', () async {
      // Configure Dio mock to throw an error
      when(mockDio.get('search?q=artist_name&type=artist'))
          .thenAnswer((_) async => Response(
        data: 'Error',
        statusCode: 400,
        requestOptions: RequestOptions(path: ''),
      ));

      // Verify exception is thrown
      expect(
            () async => await homeService.fetchPaginatedArtist('artist_name'),
        throwsException,
      );
    });

    test('fetchPaginatedAlbums throws exception on failure', () async {
      // Configure Dio mock to throw an error
      when(mockDio.get('search?q=album_name&type=album'))
          .thenAnswer((_) async => Response(
        data: 'Error',
        statusCode: 400,
        requestOptions: RequestOptions(path: ''),
      ));

      // Verify exception is thrown
      expect(
            () async => await homeService.fetchPaginatedAlbums('album_name'),
        throwsException,
      );
    });
  });
}

class MockDio extends Mock implements Dio {}
