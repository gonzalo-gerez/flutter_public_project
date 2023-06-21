import 'package:flutter_public_repository/data/remote/model/post_dto.dart';
import 'package:flutter_public_repository/domain/entities/post_model.dart';

extension PostRemoteMapper on PostDto {

  PostModel toModel() => PostModel(id: id, title: title, body: body,userId: userId);
}