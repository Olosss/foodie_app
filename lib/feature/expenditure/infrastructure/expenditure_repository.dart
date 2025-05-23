import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/feature/expenditure/domain/repository/expenditure_repository_interface.dart';
import 'package:foodie_app/feature/expenditure/infrastructure/mapper/expenditure_mapper.dart';

class ExpenditureRepository implements ExpenditureRepositoryInterface {
  ExpenditureRepository({
    required this.firestore,
    required this.expenditureMapper,
  });

  final FirebaseFirestore firestore;
  final ExpenditureMapper expenditureMapper;

  @override
  Future<void> addExpenditure({
    required Expenditure expenditure,
    required String roomId,
  }) {
    final CollectionReference<Object?> expenditureCollection =
        firestore.collection('rooms').doc(roomId).collection('expenditures');

    return expenditureCollection.add(
      expenditureMapper.toJson(
        expenditure,
      ),
    );
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
                        expenditureMapper.fromJson(
                      snapshot.data(),
                    ),
                  )
                  .toList(),
        );
  }
}
