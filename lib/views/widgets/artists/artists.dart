import 'package:flutter/material.dart';

import '../../home/models/album/album.dart';



class ArtistList extends StatelessWidget {
  final List<Album> albums;

  const ArtistList({Key? key, required this.albums}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, index) {
        final item = albums[index];
        return ArtistCard(album: item);
      },
    );
  }
}

class ArtistCard extends StatelessWidget {
  final Album album;

  const ArtistCard({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,

      child:  ListTile(
        leading: CircleAvatar(
          child: Image.network(
            album.images[0].url,
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
          ),
        ),
        title:     Text(
          album.name,
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
