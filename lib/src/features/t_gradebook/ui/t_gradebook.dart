import 'package:diploma_web_teacher/src/features/t_gradebook/ui/widgets/gradebook_card.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/header_widget.dart';
import '../../localization/generated/l10n.dart';
import '../../navigation/app_router/app_router.dart';

class TGradeBook extends StatelessWidget {
  const TGradeBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: HeaderWidget(
            title: S.of(context).gradeBook,
            withDisabilities: false,
          ),
        ),
        backgroundColor: theme.colors.background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 34),
            // SizedBox(
            //   width: 340,
            //   child: TabBar(
            //     unselectedLabelColor: theme.colors.gray600,
            //     indicatorWeight: 6,
            //     indicatorSize: TabBarIndicatorSize.label,
            //     indicatorColor: theme.colors.accent,
            //     labelColor: theme.colors.accent,
            //     labelStyle:
            //         theme.textStyles.s15w500.copyWith(color: theme.colors.accent),
            //     tabs: [
            //       Tab(
            //         text: S.of(context).allCourses,
            //       ),
            //       Tab(
            //         text: S.of(context).secondCourses,
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, int index) {
                  return GestureDetector(
                      onTap: () {
                        context.router.push(
                          const TGradeBookDetailedRoute(),
                        );
                      },
                      child: const GradeBookCard());
                },
                itemCount: 3,
              ),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
