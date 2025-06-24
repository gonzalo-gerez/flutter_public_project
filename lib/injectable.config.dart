// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_public_repository/core/di/network_module.dart' as _i13;
import 'package:flutter_public_repository/home/data/local/database/app_database.dart'
    as _i3;
import 'package:flutter_public_repository/home/data/local/source/post_dao.dart'
    as _i5;
import 'package:flutter_public_repository/home/data/local/source/post_local_source.dart'
    as _i7;
import 'package:flutter_public_repository/home/data/remote/service/post_service.dart'
    as _i8;
import 'package:flutter_public_repository/home/data/remote/source/post_remote_source.dart'
    as _i6;
import 'package:flutter_public_repository/home/data/repository/post_repository_impl.dart'
    as _i10;
import 'package:flutter_public_repository/home/domain/repository/post_repository.dart'
    as _i9;
import 'package:flutter_public_repository/home/domain/usecases/get_post_list_usecase.dart'
    as _i11;
import 'package:flutter_public_repository/home/presentation/bloc/post_list/post_list_bloc.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
    gh.lazySingleton<_i4.Dio>(() => networkModule.dio());
    gh.factory<_i5.PostDao>(() => _i5.PostDao(gh<_i3.AppDatabase>()));
    gh.factory<_i6.PostDataSource>(
      () => _i7.PostLocalSource(gh<_i5.PostDao>()),
      instanceName: 'postLocalSource',
    );
    gh.singleton<String>(
      networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.lazySingleton<_i8.PostService>(() => _i8.PostService(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i6.PostDataSource>(
      () => _i6.PostRemoteDataSource(gh<_i8.PostService>()),
      instanceName: 'postRemoteSource',
    );
    gh.factory<_i9.PostRepository>(() => _i10.PostRepositoryImpl(
          gh<_i6.PostDataSource>(instanceName: 'postLocalSource'),
          gh<_i6.PostDataSource>(instanceName: 'postRemoteSource'),
        ));
    gh.factory<_i11.GetPostListUseCase>(
        () => _i11.GetPostListUseCase(gh<_i9.PostRepository>()));
    gh.factory<_i12.PostListBloc>(
        () => _i12.PostListBloc(gh<_i11.GetPostListUseCase>()));
    return this;
  }
}

class _$NetworkModule extends _i13.NetworkModule {}
