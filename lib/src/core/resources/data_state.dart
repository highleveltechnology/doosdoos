import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;
  final String? errorMessage;
  final String? successMessage;
  final int? total;

  const DataState(
      {this.successMessage,
      this.total,
      this.errorMessage,
      this.data,
      this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(
    T data, {
    int? total = 0,
  }) : super(
          data: data,
          total: total,
        );
}

class DataSuccessMessage<T> extends DataState<T> {
  const DataSuccessMessage(String successMessage)
      : super(successMessage: successMessage);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}

class DataFailedMessage<T> extends DataState<T> {
  const DataFailedMessage(String errorMessage)
      : super(errorMessage: errorMessage);
}
