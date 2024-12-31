import 'package:flutter/material.dart';

import '../../home/models/artist/artist.dart';




class ArtistList extends StatelessWidget {
  final List<Artist> artists;

  const ArtistList({Key? key, required this.artists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: artists.length,
      itemBuilder: (context, index) {
        final item = artists[index];
        return ArtistCard(artist: item);
      },
    );
  }
}

class ArtistCard extends StatelessWidget {
  final Artist artist;

  const ArtistCard({Key? key, required this.artist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,

      child:   ListTile(
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
            print('Image failed to load: $exception');
          },
        ),
      ),

        ),
        title:     Text(
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
