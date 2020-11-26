import 'package:http/http.dart 'as http;
import 'package:local_host_api_test/models/albums.dart';
import 'dart:convert' show json;
import 'package:local_host_api_test/models/hotels.dart';

class Api{
  final baseUrl="https://imindmob-api.herokuapp.com/";
  final baseUrlAlbum="https://jsonplaceholder.typicode.com/";
  String albumList() =>  baseUrlAlbum+"albums";
  String userList() =>  baseUrl + "users";
  String hotelsList() =>  baseUrl + "hotels";

  Future<List<dynamic>> request(String urlString)async{
    final result= await http.get(urlString);
    final body=json.decode(result.body);
    return body;
  }



  fetchUsers()async{
    final List<dynamic> list= await request(userList());
    list.forEach((l) {
      print("Nouvel Utilisateur: $l");
    });
  }

  Future<List<Hotel>> fetchHotels()async{
    final List<dynamic> list= await request(hotelsList());
    return list.map((json) => Hotel.fromJson(json)).toList();

  }

  Future<List<Album>> fetchAlbums()async{
    final List<dynamic> list= await request(albumList());
    return list.map((json) => Album.fromJson(json)).toList();
  }


  Future<Album> deleteAlbum(int id) async {
    final http.Response response = await http.delete(
      'https://jsonplaceholder.typicode.com/albums/$id',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to delete album.');
    }
  }





  Future<List<Hotel>> deleteHotel(int id) async {
    final http.Response response = await http.delete(
      'https://jsonplaceholder.typicode.com/albums/$id',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      final body=json.decode(response.body);
      return body;
    } else {
      throw Exception('Failed to delete album.');
    }
  }


}


