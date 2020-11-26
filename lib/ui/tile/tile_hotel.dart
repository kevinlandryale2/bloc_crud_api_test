import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:local_host_api_test/models/hotels.dart';
class TileHotel extends StatelessWidget{
  final  Hotel hotel;

  //String userList() =>  baseUrl + "users";

  //final Thumbnail thumbnail;
  TileHotel(this.hotel);

  @override
  Widget build(BuildContext context) {
    const String apiAdress = "https://imindmob-api.herokuapp.com";
    var _height=MediaQuery.of(context).size.height;
    var _width=MediaQuery.of(context).size.width;
    // TODO: implement build
    return InkWell(
      child: SizedBox(
        height:_height*0.24665,
        width: _width*0.4579468599,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Color.fromRGBO(253, 252, 220, 1),
            child: Column(
              children: [
                Container(
                    height:_height*0.13875,
                    width: _width*0.38,
                   decoration: BoxDecoration(
                     image:  DecorationImage(
                       image: NetworkImage(apiAdress+hotel.imagepres.url),
                       fit: BoxFit.contain,
                     ),
                     borderRadius: BorderRadius.circular(12),
                   ),
                ),
                Text(hotel.prix),
                Text(hotel.name),
                Container(
                  height:_height*0.07875,
                  //color: Colors.red,
                  child: AutoSizeText(
                    hotel.description,
                    style: TextStyle(fontSize: 30.0),
                    maxLines:2,
                  ),
                )

              ],
            ),
        ),
      ),
    );
  }
}