import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GSRSessionsRecord extends FirestoreRecord {
  GSRSessionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date_uploaded" field.
  DateTime? _dateUploaded;
  DateTime? get dateUploaded => _dateUploaded;
  bool hasDateUploaded() => _dateUploaded != null;

  // "file_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  bool hasFileName() => _fileName != null;

  // "isAnxious" field.
  bool? _isAnxious;
  bool get isAnxious => _isAnxious ?? false;
  bool hasIsAnxious() => _isAnxious != null;

  // "stress_probability" field.
  double? _stressProbability;
  double get stressProbability => _stressProbability ?? 0.0;
  bool hasStressProbability() => _stressProbability != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dateUploaded = snapshotData['date_uploaded'] as DateTime?;
    _fileName = snapshotData['file_name'] as String?;
    _isAnxious = snapshotData['isAnxious'] as bool?;
    _stressProbability = castToType<double>(snapshotData['stress_probability']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('GSR_Sessions')
          : FirebaseFirestore.instance.collectionGroup('GSR_Sessions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('GSR_Sessions').doc(id);

  static Stream<GSRSessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GSRSessionsRecord.fromSnapshot(s));

  static Future<GSRSessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GSRSessionsRecord.fromSnapshot(s));

  static GSRSessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GSRSessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GSRSessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GSRSessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GSRSessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GSRSessionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGSRSessionsRecordData({
  DateTime? dateUploaded,
  String? fileName,
  bool? isAnxious,
  double? stressProbability,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_uploaded': dateUploaded,
      'file_name': fileName,
      'isAnxious': isAnxious,
      'stress_probability': stressProbability,
    }.withoutNulls,
  );

  return firestoreData;
}

class GSRSessionsRecordDocumentEquality implements Equality<GSRSessionsRecord> {
  const GSRSessionsRecordDocumentEquality();

  @override
  bool equals(GSRSessionsRecord? e1, GSRSessionsRecord? e2) {
    return e1?.dateUploaded == e2?.dateUploaded &&
        e1?.fileName == e2?.fileName &&
        e1?.isAnxious == e2?.isAnxious &&
        e1?.stressProbability == e2?.stressProbability;
  }

  @override
  int hash(GSRSessionsRecord? e) => const ListEquality()
      .hash([e?.dateUploaded, e?.fileName, e?.isAnxious, e?.stressProbability]);

  @override
  bool isValidKey(Object? o) => o is GSRSessionsRecord;
}
