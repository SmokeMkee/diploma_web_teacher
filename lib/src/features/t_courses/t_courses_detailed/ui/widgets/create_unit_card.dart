import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../theme_manager/theme_manager.dart';

class CreateUnitCard extends StatelessWidget {
  const CreateUnitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side:  BorderSide(
          color: theme.colors.gray200,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.svg.addCircleBold),
            const SizedBox(width: 12),
            Text(
              'Create new unit',
              style: theme.textStyles.s15w500.copyWith(
                color: theme.colors.gray600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
