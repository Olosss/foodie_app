import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/core/expenditure/domain/entity/expenditure.dart';
import 'package:foodie_app/core/expenditure/domain/repository/expenditure_repository_interface.dart';

class ExpenditureRepository implements ExpenditureRepositoryInterface {
  final FirebaseFirestore firestore;

  ExpenditureRepository({required this.firestore,});

  @override
  Future<void> addExpenditure({
    required Expenditure expenditure,
    required String roomId,
  }) {
    CollectionReference expenditureCollection = firestore.collection('rooms').doc(roomId).collection('expenditures');
    
    return expenditureCollection.add(expenditure.toJson());
  }
}
