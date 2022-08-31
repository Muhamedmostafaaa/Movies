import 'package:equatable/equatable.dart';

class ErorrMessageModel extends Equatable{
  int statusCode;
  bool success;
  String statusMessage;

  ErorrMessageModel({required this.statusCode,required this.success, required this.statusMessage});

 factory ErorrMessageModel.fromJson(Map<String,dynamic>json)=>ErorrMessageModel
   (statusCode: json['status_code'],
     success: json['status_message'], statusMessage: json['success']);

  @override
  // TODO: implement props
  List<Object?> get props => [success,statusMessage,statusCode];
}