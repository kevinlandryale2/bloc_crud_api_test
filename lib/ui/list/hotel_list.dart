import 'package:flutter/material.dart';
import 'package:local_host_api_test/models/hotels.dart';
import 'package:local_host_api_test/ui/tile/tile_hotel.dart';

class ListHotel extends StatelessWidget{
  final List<Hotel> hotel;
  ListHotel(this.hotel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

        itemCount: hotel.length,
        itemBuilder:(ctx,i)=>TileHotel(hotel[i])
    );
  }
}