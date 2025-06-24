import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_dto.g.dart';

@JsonSerializable()
class PostDto {
  final int userId;
  final int id;
  final String title;
  final String body;

  const PostDto(this.userId, this.id, this.title, this.body);

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}
