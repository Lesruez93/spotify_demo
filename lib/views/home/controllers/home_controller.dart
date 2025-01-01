import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_demo/utils/utils.dart';

import 'package:spotify_demo/views/home/models/artist/artist.dart';

import '../models/album/album.dart';

import '../providers/home_service.dart';

class HomeController extends GetxController {
  final albums = RxList<Album>();
  final artists = RxList<Artist>();
  final hasMore = RxBool(false);
  final loadMore = RxBool(false);
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
      if(await checkConnectivity()){
        final result = await _albumService.fetchPaginatedAlbums(query,
            nextUrl: nextUrl.value);

        hasMore.value = result.next != null;
        nextUrl.value = result.next;
        loadMore.value =false;

        if (nextUrl.value == null) {
          albums.value = result.items;
        } else {
          albums.addAll(result.items);
        }
      }else{
        Get.snackbar('Error', 'Please connect to the internet',
            backgroundColor: Colors.red, colorText: Colors.white);

      }

    } catch (e) {
      // Handle the error (e.g., log it or show a message to the user).
      print('Error fetching albums: $e');
    }
  }

  fetchArtist(String query) async {
    try {
      if(await checkConnectivity()){
      final result = await _albumService.fetchPaginatedArtist(query,
          nextUrl: nextUrl.value);

      hasMore.value = result.next != null;
      nextUrl.value = result.next;
      loadMore.value =false;
      if (nextUrl.value == null) {
        artists.value = result.items;
      } else {
        artists.addAll(result.items);

      }
    } else{
        Get.snackbar('Error', 'Please connect to the internet',
            backgroundColor: Colors.red, colorText: Colors.white);

      }} catch (e) {
      // Handle the error (e.g., log it or show a message to the user).
      print('Error fetching artist: $e');
    }
  }

  void _onScroll() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        hasMore.value) {

      if (selected.value == 1) {
        fetchArtist(searchQuery.text);
      } else {
        fetchAlbums(searchQuery.text);
      }
      loadMore.value = true;
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
