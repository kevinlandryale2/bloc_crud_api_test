import 'dart:async';
import 'package:local_host_api_test/blocs/bloc.dart';
import 'package:local_host_api_test/models/hotels.dart';
import 'package:local_host_api_test/services/api.dart';

class BlocHotels extends Bloc{
  final _streamController= StreamController<List<Hotel>>();
  Stream<List<Hotel>> get stream=>_streamController.stream;
  Sink<List<Hotel>> get sink=>_streamController.sink;
  fetchHotels()async{
    final hotels = await Api().fetchHotels();
    sink.add(hotels);

  }
  BlocHotels(){
    fetchHotels();
  }
  @override
  dispose() =>_streamController.close();
}