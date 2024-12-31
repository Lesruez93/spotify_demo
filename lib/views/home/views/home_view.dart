import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:spotify_demo/views/widgets/artists/artists.dart';

import '../../widgets/albums/albums.dart';
import '../../widgets/search_bar/search_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Search',
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
          Container(
              margin: EdgeInsets.only(top: 17),
              child: SearchField(
                onChanged: (String? value) {
                  print(value);

                  if (controller.debounce?.isActive ?? false)
                    controller.debounce!.cancel();
                  //Search delay
                  controller.debounce =
                      Timer(const Duration(milliseconds: 200), () {
                    if (value == '') {
                      controller.albums.value = [];
                    }

                    if (value != null && value.isNotEmpty) {

                      // album index is 0 and artists index is 1
                      if (controller.selected.value == 1) {
                        controller.fetchArtist(value);
                      } else {
                        controller.fetchAlbums(value);
                      }
                    }
                  });
                  return null;
                },
                labelText: "Search Albums, Artist",
                controller: controller.searchQuery,
              )),
          Obx(() {
            return Wrap(
              spacing: 5.0,
              children: List<Widget>.generate(
                2,
                (int index) {
                  return ChoiceChip(
                    selectedColor: Colors.green,
                    backgroundColor: Colors.black,
                    checkmarkColor: Colors.white,
                    label: Text(
                      index == 0 ? 'Album' : 'Artists',
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: controller.selected.value == index,
                    onSelected: (bool selected) {
                      controller.searchQuery.clear(); //clear text field on switch

                      controller.selected.value = (selected ? index : null)!;
                      controller.albums.value = [];
                      // clear albums list
                    },
                  );
                },
              ).toList(),
            );
          }),
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              }

              return controller.selected.value == 0
                  ? AlbumGrid(albums: controller.albums)
                  : ArtistList(artists: controller.artists);
            }),
          ),
        ]),
      ),
    );
  }
}
