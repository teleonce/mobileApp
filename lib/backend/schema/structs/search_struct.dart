// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchStruct extends FFFirebaseStruct {
  SearchStruct({
    String? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  static SearchStruct fromMap(Map<String, dynamic> data) => SearchStruct(
        title: data['title'] as String?,
      );

  static SearchStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SearchStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchStruct && title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([title]);
}

SearchStruct createSearchStruct({
  String? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchStruct(
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchStruct? updateSearchStruct(
  SearchStruct? search, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    search
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchStructData(
  Map<String, dynamic> firestoreData,
  SearchStruct? search,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (search == null) {
    return;
  }
  if (search.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && search.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchData = getSearchFirestoreData(search, forFieldValue);
  final nestedData = searchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = search.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchFirestoreData(
  SearchStruct? search, [
  bool forFieldValue = false,
]) {
  if (search == null) {
    return {};
  }
  final firestoreData = mapToFirestore(search.toMap());

  // Add any Firestore field values
  search.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchListFirestoreData(
  List<SearchStruct>? searchs,
) =>
    searchs?.map((e) => getSearchFirestoreData(e, true)).toList() ?? [];
