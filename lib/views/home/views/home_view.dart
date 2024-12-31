import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
                    if (value != null && value.isNotEmpty) {
                      controller.fetchAlbums(value);
                      // album index is 0 and artists index is 1
                      if (controller.selected.value == 1) {
                        controller.fetchArtist(value);
                      } else {
                        controller.fetchAlbums(value);
                      }
                    }
                  });
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
                      controller.selected.value = (selected ? index : null)!;
                      controller.albums.value = [];
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

              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: controller.albums.length,
                  itemBuilder: (context, index) {
                    final item = controller.albums[index];
                    return Card(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              item.images[0].url,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child; // The image is fully loaded.
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value: loadingProgress.expectedTotalBytes != null
                                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                          : null, // Show indeterminate if total bytes are unknown.
                                    ),
                                  );
                                }
                              },
                            )

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              item.artists[0].name,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              item.releaseDate,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }),
          ),
        ]),
      ),
    );
  }
}
