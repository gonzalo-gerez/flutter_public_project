import 'package:dio/dio.dart';
import 'package:flutter_public_repository/home/data/remote/model/post_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'post_service.g.dart';

@lazySingleton
@RestApi()
abstract class PostService {
  @factoryMethod
  factory PostService(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _PostService;

  @GET('/posts?userId={userId}')
  Future<List<PostDto>> fetch(@Path() int userId);
}