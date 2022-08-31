

import '../network/error_message_model.dart';

class RemoteServerExcption implements Exception{
  final ErorrMessageModel erorrMessageModel;

  RemoteServerExcption({required this.erorrMessageModel});
}
class LocalDataBaseException implements Exception{
  final ErorrMessageModel erorrMessageModel;

  LocalDataBaseException({required this.erorrMessageModel});
}
