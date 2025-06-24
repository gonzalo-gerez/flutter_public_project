import 'package:flutter_public_repository/core/api/data_result.dart';
import 'package:flutter_public_repository/core/api/datasource/base_data_source.dart';
import 'package:flutter_public_repository/home/data/remote/model/post_dto.dart';
import 'package:flutter_public_repository/home/data/remote/service/post_service.dart';
import 'package:injectable/injectable.dart';

abstract class PostDataSource {
  Future<DataResult<List<PostDto>>> getListPostByUser(int userId);
}

@Named("postRemoteSource")
@Injectable(as: PostDataSource)
class PostRemoteDataSource extends BaseDataSource implements PostDataSource {
  PostService service;

  PostRemoteDataSource(this.service);

  @override
  Future<DataResult<List<PostDto>>> getListPostByUser(int userId) async {
    return executeRequest(() => service.fetch(userId));
  }
}
