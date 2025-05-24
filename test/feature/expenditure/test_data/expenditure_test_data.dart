import 'package:foodie_app/feature/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/feature/expenditure/domain/entity/expenditure.dart';

const String tUserUid1 = 'user_alice_123';
const String tUserUid2 = 'user_bob_456';
const String tUserUid3 = 'user_charlie_789';

const String tRoomId1 = 'room_kitchen_party_abc';
const String tRoomId2 = 'room_living_room_xyz';

const Cost tCostUser1Only_10 = Cost(userUid: tUserUid1, value: 10.0);
const Cost tCostUser2Only_25 = Cost(userUid: tUserUid2, value: 25.50);
const Cost tCostUser3Only_5 = Cost(userUid: tUserUid3, value: 5.0);

final List<Cost> tCostSharedUser1_15User2_15 = <Cost>[
  tCostUser1Only_10,
  tCostUser2Only_25,
];

final List<Cost> tCostComplexUser1_5User2_10User3_20 = <Cost>[
  tCostUser1Only_10,
  tCostUser2Only_25,
  tCostUser3Only_5,
];

final Expenditure tExpenditure1Pizza = Expenditure(
  payerUid: tUserUid1,
  name: 'Pizza Night',
  time: DateTime(
    2024,
    5,
    20,
    19,
    30,
  ),
  cost: tCostSharedUser1_15User2_15,
);

final Expenditure tExpenditure2Coffee = Expenditure(
  payerUid: tUserUid2,
  name: 'Morning Coffee',
  time: DateTime(
    2024,
    5,
    21,
    9,
  ),
  cost: tCostComplexUser1_5User2_10User3_20,
);

final List<Expenditure> tExpendituresList = <Expenditure>[
  tExpenditure1Pizza, // 2024-05-20 19:30
  tExpenditure2Coffee, // 2024-05-20 12:00
];
