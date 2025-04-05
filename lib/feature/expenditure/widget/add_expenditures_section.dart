import 'package:flutter/material.dart';
import 'package:flutter/services.dart' hide TextInput;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/expenditure/domain/entity/cost.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:foodie_app/feature/common/widget/app_divider.dart';
import 'package:foodie_app/feature/common/widget/button/gradient_button.dart';
import 'package:foodie_app/feature/common/widget/input/text_input.dart';
import 'package:foodie_app/feature/expenditure/notifier/add_expenditure_notifier.dart';
import 'package:foodie_app/feature/expenditure/notifier/state/add_expenditure_state.dart';
import 'package:foodie_app/feature/expenditure/widget/payer_chips.dart';
import 'package:foodie_app/feature/expenditure/widget/user_expenditure_row.dart';
import 'package:foodie_app/styles/styles.dart';
import 'package:foodie_app/utils/double_utils.dart';
import 'package:foodie_app/utils/regex_utils.dart';
import 'package:go_router/go_router.dart';

class AddExpendituresSection extends ConsumerStatefulWidget {
  const AddExpendituresSection({
    super.key,
    required this.users,
    required this.roomId,
  });

  final List<RoomMember> users;
  final String roomId;

  @override
  ConsumerState<AddExpendituresSection> createState() =>
      _AddExpendituresSectionState();
}

class _AddExpendituresSectionState
    extends ConsumerState<AddExpendituresSection> {
  late final TextEditingController _totalAmountController;
  late final TextEditingController _titleController;
  late final Map<String, TextEditingController> usersExpendituresMap;
  late final Map<String, FocusNode> usersExpendituresFocusNodes;
  double? _totalAmountGlobal;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _totalAmountFocus = FocusNode();
  late String _payerId = widget.users.first.uid;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController();

    _totalAmountController = TextEditingController()
      ..addListener(
        _onTotalAmountChanged,
      );

    _totalAmountFocus.addListener(_onFocusGlobalAmountChanged);

    usersExpendituresMap = <String, TextEditingController>{
      for (RoomMember user in widget.users)
        user.uid: TextEditingController(text: '0.00')
          ..addListener(
            () => _onUserAmountChanged(
              user.uid,
            ),
          ),
    };

    usersExpendituresFocusNodes = <String, FocusNode>{
      for (RoomMember user in widget.users)
        user.uid: FocusNode()
          ..addListener(
            () => _onFocusChanged(
              user.uid,
            ),
          ),
    };

    ref.listenManual(addExpenditureNotifierProvider(
      roomId: widget.roomId,
    ), (_, AddExpenditureState next){
      if(next is AddExpenditureStateDone){
        context.pop();
      }
    });
  }

  void _updatePayer({
    required String payerId,
  }) {
    setState(() {
      _payerId = payerId;
    });
  }

  @override
  void dispose() {
    _totalAmountController.dispose();
    _titleController.dispose();

    for (TextEditingController controller in usersExpendituresMap.values) {
      controller.dispose();
    }

    for (FocusNode focusNode in usersExpendituresFocusNodes.values) {
      focusNode.dispose();
    }

    _totalAmountFocus.dispose();

    super.dispose();
  }

  void _onFocusGlobalAmountChanged() {
    if (!_totalAmountFocus.hasFocus) {
      _totalAmountController.text =
          (double.tryParse(_totalAmountController.text) ?? 0)
              .toStringAsFixed(2);
    }
  }

  void _onFocusChanged(String uid) {
    if (usersExpendituresFocusNodes[uid]!.hasFocus) {
      usersExpendituresMap[uid]?.text = '';
      return;
    } else {
      usersExpendituresMap[uid]?.text =
          (double.tryParse(usersExpendituresMap[uid]!.text) ?? 0)
              .toStringAsFixed(2);
    }
  }

  void _onTotalAmountChanged() {
    double totalAmount = double.tryParse(_totalAmountController.text) ?? 0;

    if (totalAmount == _totalAmountGlobal) {
      return;
    }

    _totalAmountGlobal = totalAmount;
    double distributedAmount = 0;

    usersExpendituresMap.entries
        .toList()
        .asMap()
        .forEach((int i, MapEntry<String, TextEditingController> entry) {
      final bool isLastUser = i == usersExpendituresMap.length - 1;

      final double averageUserExpenditure =
          (totalAmount / usersExpendituresMap.length).floorToTwoPlaces();

      if (isLastUser) {
        entry.value.text = (totalAmount - distributedAmount).toStringAsFixed(2);
        return;
      }

      distributedAmount = distributedAmount + averageUserExpenditure;
      entry.value.text = averageUserExpenditure.toStringAsFixed(2);
    });
  }

  void _onUserAmountChanged(String uid) {
    final FocusNode? focusNode = usersExpendituresFocusNodes[uid];

    if (focusNode == null) {
      return;
    }

    if (!focusNode.hasFocus) {
      return;
    }

    double totalAmount = double.tryParse(_totalAmountController.text) ?? 0;

    double distributedAmount = 0;
    double dividedForUsers = 0;
    bool shouldRecalculate = false;
    int? remainingUsers;

    usersExpendituresMap.entries
        .toList()
        .asMap()
        .forEach((int index, MapEntry<String, TextEditingController> entry) {
      final String currentUserId = entry.key;

      if (currentUserId == uid || shouldRecalculate) {
        if (currentUserId == uid) {
          remainingUsers = usersExpendituresMap.length - (index + 1);

          final double entryValue = (double.tryParse(entry.value.text) ?? 0);

          if (entryValue + distributedAmount > totalAmount) {
            dividedForUsers = 0;
            entry.value.text =
                (totalAmount - distributedAmount).toStringAsFixed(2);
            return;
          }

          distributedAmount = distributedAmount + entryValue;
          dividedForUsers = (totalAmount - distributedAmount);
          shouldRecalculate = true;
          return;
        }

        final bool isLastUser = index == usersExpendituresMap.length - 1;
        final double averageAmountPerUser =
            (dividedForUsers / remainingUsers!).floorToTwoPlaces();

        if (isLastUser) {
          entry.value.text =
              (totalAmount - distributedAmount).toStringAsFixed(2);
          return;
        }

        distributedAmount = distributedAmount + averageAmountPerUser;
        entry.value.text = averageAmountPerUser.toStringAsFixed(2);
      } else {
        distributedAmount =
            distributedAmount + (double.tryParse(entry.value.text) ?? 0);
      }
    });
  }

  void _onAddTap(WidgetRef ref) {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref
        .read(
          addExpenditureNotifierProvider(
            roomId: widget.roomId,
          ).notifier,
        )
        .addExpenditure(
          payerUid: _payerId,
          cost: usersExpendituresMap.entries
              .map(
                (MapEntry<String, TextEditingController> item) => Cost(
                  userUid: item.key,
                  value: double.tryParse(item.value.text) ?? 0,
                ),
              )
              .toList(),
          name: _titleController.text,
        );
  }

  String? _validateTitleName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Can not be empty';
    }
    return null;
  }

  String? _validateTotalAmount(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fill in amount';
    }
    if (!RegexUtils.floatOrIntegerRegex.hasMatch(value)) {
      return 'Invalid format';
    }

    final double totalAmount = (double.tryParse(value) ?? 0);
    if (totalAmount == 0) {
      return 'Positive only';
    }

    return null;
  }

  String? _validateUserField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Can not be empty';
    }
    if (!RegexUtils.floatOrIntegerRegex.hasMatch(value)) {
      return 'Invalid format';
    }

    double total = 0;

    usersExpendituresMap.entries
        .toList()
        .asMap()
        .forEach((int i, MapEntry<String, TextEditingController> entry) {
      final double value = (double.tryParse(entry.value.text) ?? 0);
      total = total + value;
    });

    if (_totalAmountGlobal != total) {
      return 'Expenses do not match the total amount';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final AddExpenditureState addExpenditureState = ref.watch(
      addExpenditureNotifierProvider(
        roomId: widget.roomId,
      ),
    );

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: TextInput(
                  label: 'Title',
                  hintText: 'E.g Pizza',
                  validator: _validateTitleName,
                  controller: _titleController,
                ),
              ),
              Spacers.horizontalSmall(),
              Flexible(
                child: TextInput(
                  label: 'Amount',
                  hintText: '00,00',
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegexUtils.maxTwoDecimalPlacesRegex),
                  ],
                  controller: _totalAmountController,
                  validator: _validateTotalAmount,
                  focusNode: _totalAmountFocus,
                ),
              ),
            ],
          ),
          Spacers.verticalMedium(),
          const AppDivider(),
          Spacers.verticalMedium(),
          Text(
            'Paid by',
            style: theme.inputDecorationTheme.labelStyle,
          ),
          Spacers.verticalMedium(),
          PayerChips(
            users: widget.users,
            onPayerPillTap: (String payerID) => _updatePayer(payerId: payerID),
            selectedPayerId: _payerId,
          ),
          Spacers.verticalMedium(),
          const AppDivider(),
          Spacers.verticalMedium(),
          Text(
            'Split',
            style: theme.inputDecorationTheme.labelStyle,
          ),
          Spacers.verticalSmall(),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.borderRadiusSmall,
              color: theme.colorScheme.secondaryContainer,
            ),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: Paddings.paddingVerticalUltraNanoSmall(),
              shrinkWrap: true,
              itemBuilder: (_, int index) {
                return Padding(
                  padding: Paddings.paddingVerticalNanoSmall(),
                  child: UserExpenditureRow(
                    userName: widget.users[index].userName,
                    controller: usersExpendituresMap[widget.users[index].uid],
                    focusNode:
                        usersExpendituresFocusNodes[widget.users[index].uid],
                    validator: _validateUserField,
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return Padding(
                  padding: Paddings.paddingVerticalUltraNanoSmall(),
                  child: const AppDivider(),
                );
              },
              itemCount: widget.users.length,
            ),
          ),
          Spacers.verticalMedium(),
          Visibility(
            visible: addExpenditureState is AddExpenditureStateError,
            child: Center(
              child: Text(
                'Failed to create the expense',
                style: theme.inputDecorationTheme.errorStyle,
              ),
            ),
          ),
          Spacers.verticalMedium(),
          GradientButton(
            isLoading: addExpenditureState is AddExpenditureStateLoading,
            label: 'Add Expenditure',
            onTap: () => _onAddTap(ref),
            image: const Icon(
              Icons.add_box_outlined,
            ),
          ),
          Spacers.verticalLarge(),
        ],
      ),
    );
  }
}
