import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_demo/utils/utils.dart';
import 'package:spotify_demo/views/home/models/album/paginate_album.dart';
import 'package:spotify_demo/views/home/models/artist/artist.dart';

import '../models/album/album.dart';
import '../providers/home_service.dart';

class HomeController extends GetxController {
  var album = <PaginateAlbum>{}.obs;
  var artists = <Artist>[].obs;

  final albums = RxList<Album>();
  final hasMore = RxBool(false);
  final nextUrl = Rx<String?>(null);
  var isLoading = false.obs;
  var currentPage = 1.obs;

  final HomeService _albumService = HomeService();

  TextEditingController searchQuery = TextEditingController();
  final ScrollController scrollController = ScrollController();

  var selected = 0.obs;

  Timer? debounce;

  @override
  void onInit() {
    scrollController.addListener(_onScroll);
    super.onInit();
  }


  fetchAlbums(String query) async {
    try {
      final result = await _albumService.fetchPaginatedAlbums(query, nextUrl: nextUrl.value);

      hasMore.value = result.next != null;
      nextUrl.value = result.next;

      if (nextUrl.value == null) {
        // If this is the first fetch, replace the entire list.
        albums.value = result.items;
      } else {
        // If this is a paginated fetch, append new items.
        albums.addAll(result.items);
      }
    } catch (e) {
      // Handle the error (e.g., log it or show a message to the user).
      print('Error fetching albums: $e');
    }
  }



  void fetchArtist(value) async {
    try {
      if (await checkConnectivity()) {
        isLoading(true);
        var artistList = await _albumService.fetchArtist(value);
        // Use service

        artists.value = artistList;
      } else {
        Get.snackbar('Error', 'Please connect to the internet',
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  void _onScroll() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        hasMore.value) {}
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
