import 'package:dio/dio.dart';
import 'package:flutter_public_repository/core/api/data_result.dart';
import 'package:flutter_public_repository/core/exceptions/data_exception.dart';

abstract class BaseDataSource {
  Future<DataResult<T>> executeRequest<T>(
      final Future<T> Function() function) async {
    try {
      final apiResult = await function();
      return DataResult.success(data: apiResult);
    } on DioException catch (e) {
      print('Error in BaseDataSource DioError: ${e.message}');
      return DataResult.failure(dataException: DataException.fromDioError(e));
    } catch (e) {
      print('Error in BaseDataSource Exception: ${e.toString()}');
      return const DataResult.failure(dataException: UnexpectedError());
    }
  }
}
