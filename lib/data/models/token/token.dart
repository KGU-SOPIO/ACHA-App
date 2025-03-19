import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class TokenReissueResponseModel with _$TokenReissueResponseModel {
  const factory TokenReissueResponseModel({
    required String accessToken,
  }) = TokenReissueResponse;

  const factory TokenReissueResponseModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = TokenReissueError;

  factory TokenReissueResponseModel.fromJson(Map<String, dynamic> json) =>
      const TokenReissueResponseConverter(field: 'accessToken').fromJson(json);
}
