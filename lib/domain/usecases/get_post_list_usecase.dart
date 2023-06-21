import 'package:dartz/dartz.dart';
import 'package:flutter_public_repository/core/exceptions/domain_exception.dart';
import 'package:flutter_public_repository/domain/entities/post_model.dart';
import 'package:flutter_public_repository/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPostListUseCase {

  final PostRepository _repository;

  GetPostListUseCase(this._repository);

  Future<Either<DomainException, List<PostModel>>> getPosts(int userId) => _repository.fetchPost(userId);

}