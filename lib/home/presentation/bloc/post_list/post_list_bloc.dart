import 'package:bloc/bloc.dart';
import 'package:flutter_public_repository/core/bloc/result_state.dart';
import 'package:flutter_public_repository/home/domain/entities/post_model.dart';
import 'package:flutter_public_repository/home/domain/usecases/get_post_list_usecase.dart';
import 'package:flutter_public_repository/home/presentation/bloc/post_list/post_list_event.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostListBloc extends Bloc<PostListEvent, ResultState<List<PostModel>>> {
  final GetPostListUseCase _getPostListUseCase;

  PostListBloc(this._getPostListUseCase) : super(const Idle()) {
    on<LoadPosts>(_onLoadPosts);
  }

  void _onLoadPosts(PostListEvent event,
      Emitter<ResultState<List<PostModel>>> emitter) async {
    emitter(const Loading());

    final posts = await _getPostListUseCase.getPosts(event.userId);

    posts.fold(
        (error) => {
              emitter(Error(error: error)),
            },
        (result) => {
              emitter(Data(data: result)),
            });
  }
}
