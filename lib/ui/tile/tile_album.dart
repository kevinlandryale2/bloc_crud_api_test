import 'package:flutter/material.dart';
import 'package:local_host_api_test/models/albums.dart';
class TileAlbum extends StatelessWidget{
  final  Album album;

  //String userList() =>  baseUrl + "users";

  //final Thumbnail thumbnail;
  TileAlbum(this.album);

  @override
  Widget build(BuildContext context) {
    int ida=album.id;
    var _height=MediaQuery.of(context).size.height;
    var _width=MediaQuery.of(context).size.width;
    // TODO: implement build
    return InkWell(
      child: SizedBox(

        width: _width*0.4579468599,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Color.fromRGBO(253, 252, 220, 1),
          child: Column(
            children: [
              Container(
                width: _width*0.38,
              ),
              Text(album.id.toString()),
              Text(album.title),
              ElevatedButton(
                  onPressed: null,
                  child: Text("Supprimer l'album $ida")),
              Container(
                height:_height*0.07875,
                //color: Colors.red,
              )

            ],
          ),
        ),
      ),
    );
  }
}