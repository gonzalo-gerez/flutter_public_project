
import 'package:flutter_public_repository/home/data/remote/model/post_dto.dart';
import 'package:flutter_public_repository/home/domain/entities/post_model.dart';

extension PostRemoteMapper on PostDto {

  PostModel toModel() => PostModel(id: id, title: title, body: body,userId: userId);
}