import 'package:drift/drift.dart';
import 'package:flutter_public_repository/home/data/local/database/app_database.dart';
import 'package:injectable/injectable.dart';

part 'post_dao.g.dart';

@injectable
@DriftAccessor(tables: [Post])
class PostDao extends DatabaseAccessor<AppDatabase> with _$PostDaoMixin {

  final AppDatabase _database;

  PostDao(this._database) : super(_database);

  Future<bool> hasDataByUser(int userId) => (select(post)..where((tbl) => tbl.userId.equals(userId))).get().then((value) => value.isNotEmpty);

  Future<List<PostData>> getPostsByUser(int userId){
    return (select(post)..where((tbl) => tbl.userId.equals(userId))).get();
  }

}