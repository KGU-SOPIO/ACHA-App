import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'file.freezed.dart';
part 'file.g.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required String name,
    required String link,
  }) = File;

  const factory FileModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = FileError;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}
