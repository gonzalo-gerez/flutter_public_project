import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_public_repository/core/bloc/result_state.dart';
import 'package:flutter_public_repository/home/domain/entities/post_model.dart';
import 'package:flutter_public_repository/home/presentation/bloc/post_list/post_list_bloc.dart';
import 'package:flutter_public_repository/home/presentation/bloc/post_list/post_list_event.dart';
import 'package:flutter_public_repository/home/presentation/widgets/card_post.dart';
import 'package:flutter_public_repository/widgets/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostListBloc>(context).add(const PostListEvent.loadPost(1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Posts list'),
      body: BlocBuilder<PostListBloc, ResultState<List<PostModel>>>(
        builder: (context, state) {
          return state.when(idle: () {
            return const SizedBox();
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, data: (data) {
            return Column(
              children: [
                Expanded(
                  child: data.isNotEmpty
                      ? ListView.builder(
                          itemBuilder: (context, index) {
                            return CardPost(
                              () {
                                context.pushNamed("detail", extra: data[index]);
                              },
                              entity: data[index],
                            );
                          },
                          itemCount: data.length,
                        )
                      : const Center(child: Text('List is empty')),
                ),
              ],
            );
          }, error: (error) {
            return Center(
              child: Text(error.message),
            );
          });
        },
      ),
    );
  }
}
