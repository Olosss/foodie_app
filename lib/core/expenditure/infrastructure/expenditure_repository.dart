import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/repository/expenditure_repository_interface.dart';

class ExpenditureRepository implements ExpenditureRepositoryInterface {
  ExpenditureRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  @override
  Future<void> addExpenditure({
    required Expenditure expenditure,
    required String roomId,
  }) {
    final CollectionReference<Object?> expenditureCollection =
        firestore.collection('rooms').doc(roomId).collection('expenditures');

    return expenditureCollection.add(expenditure.toJson());
  }

  @override
  Future<List<Expenditure>> getRoomExpenditures({
    required String roomId,
  }) {
    CollectionReference<Map<String, dynamic>> expenditureCollection =
        firestore.collection('rooms').doc(roomId).collection('expenditures');

    return expenditureCollection.get().then(
          (QuerySnapshot<Map<String, dynamic>> querySnapshot) =>
              querySnapshot.docs
                  .map(
                    (QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
                        Expenditure.fromJson(
                      snapshot.data(),
                    ),
                  )
                  .toList(),
        );
  }
}
