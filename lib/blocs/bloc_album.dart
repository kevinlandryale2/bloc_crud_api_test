import 'dart:async';

import 'package:local_host_api_test/blocs/bloc.dart';
import 'package:local_host_api_test/models/albums.dart';
import 'package:local_host_api_test/services/api.dart';

class BlocAlbum extends Bloc{
  final _streamController= StreamController<List<Album>>();
  Stream<List<Album>> get stream=>_streamController.stream;
  Sink<List<Album>> get sink=>_streamController.sink;

  fetchAlbums()async{
    final albums = await Api().fetchAlbums();
    sink.add(albums);
  }

  deleteAlbum(int id)async{
    final albums = await Api().deleteAlbum(id);
    sink.add(albums);
  }

  BlocAlbum(){
    fetchAlbums();
  }
  @override
  dispose() =>_streamController.close();
}