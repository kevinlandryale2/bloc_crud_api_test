import 'package:flutter/material.dart';
import 'package:local_host_api_test/models/albums.dart';
import 'package:local_host_api_test/ui/tile/tile_album.dart';


class ListAlbum extends StatelessWidget{
  final List<Album> album;
  ListAlbum(this.album);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: album.length,
        itemBuilder:(ctx,i)=>TileAlbum(album[i])
    );
  }
}