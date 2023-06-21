import 'package:dartz/dartz.dart';
import 'package:flutter_public_repository/core/exceptions/domain_exception.dart';
import 'package:flutter_public_repository/domain/entities/post_model.dart';

abstract class PostRepository {
  Future<Either<DomainException, List<PostModel>>> fetchPost(int userId);
}
