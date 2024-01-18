# Description
Basic reproduction of https://github.com/Carapacik/swagger_parser/issues/144#issuecomment-1840654838

The main issue seems to be that when dealing with an endpoint that has a File json_serializable cant generate fromJson/toJson functions as the following error describes:
```
[SEVERE] json_serializable on lib/generated/api/models/request.dart:  Could not generate `fromJson` code for `file`. To support the type `File` you can: * Use `JsonConverter`   https://pub.dev/documentation/json_annotation/latest/json_annotation/JsonConverter-class.html * Use `JsonKey` fields `fromJson` and `toJson`   https://pub.dev/documentation/json_annotation/latest/json_annotation/JsonKey/fromJson.html   https://pub.dev/documentation/json_annotation/latest/json_annotation/JsonKey/toJson.html package:swaggerparserissuerepro/generated/api/models/request.freezed.dart:103:15     ╷ 103 │   final File? file;     │               ^^^^     ╵ 
```

# Structure

* The `Backend` folder contains a C# backend from which I generate swagger.json
* The `App` folder contains a flutter app with `swagger_parser` configured and 2 .json swagger schemas, one with a form file and one without. The one without form data generates just fine, the with form data fails during the build_runner step.
