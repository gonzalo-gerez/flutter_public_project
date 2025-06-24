import 'package:dartz/dartz.dart';
import 'package:flutter_public_repository/core/exceptions/data_exception.dart';
import 'package:flutter_public_repository/core/exceptions/domain_exception.dart';
import 'package:flutter_public_repository/home/data/remote/mapper/post_remote_mapper.dart';
import 'package:flutter_public_repository/home/data/remote/source/post_remote_source.dart';
import 'package:flutter_public_repository/home/domain/entities/post_model.dart';
import 'package:flutter_public_repository/home/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  final PostDataSource _postLocalSource;
  final PostDataSource _postRemoteSource;

  PostRepositoryImpl(
    @Named("postLocalSource") this._postLocalSource,
    @Named("postRemoteSource") this._postRemoteSource,
  );

  @override
  Future<Either<DomainException, List<PostModel>>> fetchPost(
    int userId,
  ) async {
    try {
      final postApiResult = await _postRemoteSource.getListPostByUser(userId);

      return await postApiResult.when(success: (data) async {
        final postListEntity = data.map((e) => e.toModel()).toList();

        return Right(postListEntity);
      }, failure: (error) {
        throw error;
      });
    } on DataException catch (e, trace) {
      print('');
      return Left(DataException.toDomainError(e));
    } catch (e, trace) {
      return const Left(
          DomainException(exceptionType: DataException.unexpectedError()));
    }
  }
}
