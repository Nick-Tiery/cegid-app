import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';
import '../../widgets/will_pop_scope_generic.dart';

class CollaboratorPage extends StatelessWidget {
  const CollaboratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScopeGeneric(
      onWillPop: false,
      action: () {},
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body: Center(
          child: Text(
            'COLABORADOR',
            textAlign: TextAlign.center,
            style: AppStyles.appStyleSplash,
          ),
        ),
      ),
    );
  }
}
