import 'package:flutter_public_repository/data/local/database/app_database.dart';
import 'package:flutter_public_repository/data/remote/model/post_dto.dart';

extension PostDataMapper on PostData {
  PostDto toDto() => PostDto(userId, id, title, body);
}
