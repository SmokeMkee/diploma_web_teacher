import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_back_button.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';
import '../../../../widgets/search_widget.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../theme_manager/theme_manager.dart';

class TGradeBookDetailed extends StatelessWidget {
  const TGradeBookDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              title: 'gradebook',
              withDisabilities: false,
            ),
          ),
          backgroundColor: theme.colors.background,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children:  [
                  AppBackButton(
                    onTap: () {
                      context.router.popAndPush(const TGradeBookRouter());
                    },
                  ),
                  const SizedBox(width: 34),
                  const CourseContainer(text: 'GE',),
                  const SizedBox(width: 24),
                  Text(
                    'General English',
                    style: theme.textStyles.s18w500,
                  )
                ],
              ),
              const SizedBox(height: 36),
              const SearchWidget(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () => context.router.push(const TGradeBookDetailedGroupRoute()),
                      child: const TGradeBookDetailedCard(),
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TGradeBookDetailedCard extends StatelessWidget {
  const TGradeBookDetailedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.all(6),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children:  [
                  const CourseContainer(text: 'IT',),
                  const SizedBox(width: 18),
                  Text(
                    'ITIS -1914',
                    style: theme.textStyles.s15w500,
                  ),
                ],
              ),
              SvgPicture.asset(AppAssets.svg.arrowRight2)
            ],
          ),
        ),
      ),
    );
  }
}
