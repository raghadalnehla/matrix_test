import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matrix_erp_test/core/domain/entity/user_entity.dart';
import 'package:matrix_erp_test/features/cart/presentation/providers/user_provider.dart';

import '../../../../core/presentation/common_widgets/custom_dropdown_field.dart';
import '../../../../core/structure_utils/errors/failures.dart';

class UsersSearch extends ConsumerWidget {
  const UsersSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(usersListProvider);

    return userState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        // Handle specific failures
        if (error is ServerFailure) {
          return Center(child: Text('Server error: ${error.message}'));
        } else if (error is CacheFailure) {
          return Center(child: Text('Cache error: ${error.message}'));
        }
        return Center(child: Text('Unexpected error: $error'));
      },
      data: (either) => either.fold(
          (failure) => Center(child: Text(failure.message ?? "")),
          (users) => CustomDropDown<UserEntity>(
                hint: "global_user".tr(),
                items: users,
                onChanged: (value) {},
                withRequiredMark: false,
              )),
    );
  }
}
