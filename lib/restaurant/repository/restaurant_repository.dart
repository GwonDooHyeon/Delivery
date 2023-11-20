import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';

import '../model/restaurant_detail_model.dart';

part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository {
  // http://$ip/restauarnt
  factory RestaurantRepository(Dio dio, {String baseUrl}) = _RestaurantRepository;

  // http://$ip/restauarnt
  // @GET('/')
  // paginate();

  // http://$ip/restauarnt/id
  @GET('/{id}')
  @Headers({
    'authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InRlc3RAY29kZWZhY3RvcnkuYWkiLCJzdWIiOiJmNTViMzJkMi00ZDY4LTRjMWUtYTNjYS1kYTlkN2QwZDkyZTUiLCJ0eXBlIjoiYWNjZXNzIiwiaWF0IjoxNzAwNDgyMjI1LCJleHAiOjE3MDA0ODI1MjV9.VqtHdmmywMyzPid4qkn_bRNKDwZAO7yHIxfm7-ZmuTQ'
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}
