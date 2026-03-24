// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedTagStructStruct extends BaseStruct {
  SavedTagStructStruct({
    String? tagCode,
    String? productName,
    String? productCode,
    String? description,
  })  : _tagCode = tagCode,
        _productName = productName,
        _productCode = productCode,
        _description = description;

  // "tagCode" field.
  String? _tagCode;
  String get tagCode => _tagCode ?? '';
  set tagCode(String? val) => _tagCode = val;

  bool hasTagCode() => _tagCode != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "productCode" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static SavedTagStructStruct fromMap(Map<String, dynamic> data) =>
      SavedTagStructStruct(
        tagCode: data['tagCode'] as String?,
        productName: data['productName'] as String?,
        productCode: data['productCode'] as String?,
        description: data['description'] as String?,
      );

  static SavedTagStructStruct? maybeFromMap(dynamic data) => data is Map
      ? SavedTagStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tagCode': _tagCode,
        'productName': _productName,
        'productCode': _productCode,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tagCode': serializeParam(
          _tagCode,
          ParamType.String,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'productCode': serializeParam(
          _productCode,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static SavedTagStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      SavedTagStructStruct(
        tagCode: deserializeParam(
          data['tagCode'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        productCode: deserializeParam(
          data['productCode'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SavedTagStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SavedTagStructStruct &&
        tagCode == other.tagCode &&
        productName == other.productName &&
        productCode == other.productCode &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([tagCode, productName, productCode, description]);
}

SavedTagStructStruct createSavedTagStructStruct({
  String? tagCode,
  String? productName,
  String? productCode,
  String? description,
}) =>
    SavedTagStructStruct(
      tagCode: tagCode,
      productName: productName,
      productCode: productCode,
      description: description,
    );
