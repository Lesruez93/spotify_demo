import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../home/models/artist/artist.dart';

class ArtistList extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  ArtistList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Obx(() {
      return ListView.builder(
        controller: _controller.scrollController,
        itemCount: _controller.artists.length,
        itemBuilder: (context, index) {
          if (index < 0 || index >= _controller.artists.length) {
            return const SizedBox.shrink();
          }
          final artist = _controller.artists[index];
          return ArtistCard(artist: artist);
        },
      );
    });

  }
}

class ArtistCard extends StatelessWidget {
  final Artist artist;

  const ArtistCard({Key? key, required this.artist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: ListTile(
        leading: Container(
          width: 50, // Adjust the width and height for the CircleAvatar size
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(artist.images[0].url),
              fit: BoxFit.cover,
              onError: (exception, stackTrace) {
                // Handle the error (optional)

              },
            ),
          ),
        ),
        title: Text(
          artist.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
