import 'package:flutter_public_repository/core/api/data_result.dart';
import 'package:flutter_public_repository/data/local/mapper/post_data_mapper.dart';
import 'package:flutter_public_repository/data/local/source/post_dao.dart';
import 'package:flutter_public_repository/data/remote/model/post_dto.dart';
import 'package:flutter_public_repository/data/remote/source/post_remote_source.dart';
import 'package:injectable/injectable.dart';

@Named("postLocalSource")
@Injectable(as: PostDataSource)
class PostLocalSource implements PostDataSource {
  final PostDao dao;

  PostLocalSource(this.dao);

  @override
  Future<DataResult<List<PostDto>>> getListPostByUser(int userId) async {
    final result = await dao.getPostsByUser(userId);

    return DataResult.success(data: result.map((e) => e.toDto()).toList());
  }

  Future<bool> hasUserLocalData(int userId) async {
    final result = await dao.hasDataByUser(userId);
    return result;
  }
}
