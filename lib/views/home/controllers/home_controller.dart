import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_demo/utils/utils.dart';


import '../models/album/album.dart';
import '../providers/home_service.dart';

class HomeController extends GetxController {
  var albums = <Album>[].obs;

  var isLoading = false.obs;

  final HomeService _albumService = HomeService();

  TextEditingController searchQuery = TextEditingController();

  var selected = 0.obs;

  Timer? debounce;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchAlbums(value) async {
    try {
      if (await checkConnectivity()) {
        isLoading(true);
        var albumList = await _albumService.fetchAlbums(value);
        // Use service

        albums.value = albumList;
      } else {
        Get.snackbar('Error', 'Please connect to the internet',
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } catch (e) {
      // Handle the error (e.g., show a message)
      Get.snackbar('Error', 'Something went wrong',
          backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      isLoading(false);
    }
  }

  void fetchArtist(value) async {
    try {
      if (await checkConnectivity()) {
        isLoading(true);
        var albumList = await _albumService.fetchArtist(value);
        // Use service

        albums.value = albumList;
      } else {
        Get.snackbar('Error', 'Please connect to the internet',
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } catch (e) {
      // Handle the error (e.g., show a message)
      print('Error: $e');

      Get.snackbar('Error', 'Something went wrong',
          backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      isLoading(false);
    }
  }
}
