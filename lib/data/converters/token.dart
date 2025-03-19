import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class TokenReissueResponseConverter
    implements JsonConverter<TokenReissueResponseModel, Map<String, dynamic>> {
  const TokenReissueResponseConverter({required this.field});

  final String field;

  @override
  TokenReissueResponseModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return TokenReissueResponse.fromJson(json);
    } else {
      return TokenReissueError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(TokenReissueResponseModel object) =>
      object.toJson();
}
