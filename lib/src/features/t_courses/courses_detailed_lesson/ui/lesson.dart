import 'package:auto_route/auto_route.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../../widgets/app_back_button.dart';
import '../../../../widgets/app_divider.dart';
import '../../../../widgets/header_widget.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../theme_manager/theme_manager.dart';

class CoursesDetailedLesson extends StatelessWidget {
  const CoursesDetailedLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: HeaderWidget(
            title: 'courses > general english  > week 1',
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              CoursesMainContent(),
              SizedBox(width: 75),
              CoursesLeftSideBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class CoursesMainContent extends StatelessWidget {
  const CoursesMainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Expanded(
      flex: 4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                AppBackButton(
                  onTap: () {
                    context.router.pop();
                  },
                ),
                const SizedBox(width: 11),
                const Text('PRESENT PERF |'),
              ],
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: theme.colors.gray200,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                createNewMaterialDialog(context);
              },
              child: CreateNewMaterial(theme: theme),
            ),
          ],
        ),
      ),
    );
  }
}

void createNewMaterialDialog(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      var theme = context.watch<ThemeManager>().theme;
      return AlertDialog(
        titleTextStyle: theme.textStyles.s20w600,
        titlePadding: const EdgeInsets.symmetric(vertical: 29),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: SizedBox(
          width: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Create new material',
                style: theme.textStyles.s20w600,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: theme.colors.gray200,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 45),
              GridView.count(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  CreateMaterialTile(
                    path: AppAssets.images.text,
                    onTap: () {},
                  ),
                  CreateMaterialTile(
                    path: AppAssets.images.dividingLine,
                    onTap: () {},
                  ),
                  CreateMaterialTile(
                    path: AppAssets.images.pdfAndOther,
                    onTap: () {},
                  ),
                  CreateMaterialTile(
                    path: AppAssets.images.pictures,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

class CreateMaterialTile extends StatelessWidget {
  const CreateMaterialTile({
    super.key,
    required this.path,
    required this.onTap,
  });

  final String path;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        path,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class CreateNewMaterial extends StatelessWidget {
  const CreateNewMaterial({
    super.key,
    required this.theme,
  });

  final MainTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: theme.colors.gray200,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.svg.addCircleBold,
          ),
          const SizedBox(width: 12),
          const Text('create new material'),
        ],
      ),
    );
  }
}

class CoursesLeftSideBar extends StatelessWidget {
  const CoursesLeftSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 34),
        decoration: BoxDecoration(
          color: AppColors.gray200.withOpacity(0.1),
          border: Border.all(color: AppColors.gray200, width: 2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.gray200,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.white,
                        child: Text(
                          '1',
                          style: AppStyles.s20w600.copyWith(
                            color: AppColors.gray900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.5, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.subtitleBg,
                          ),
                          child: Text(
                            'Lecture',
                            style: AppStyles.s14w500
                                .copyWith(color: AppColors.subtitle),
                          ),
                        ),
                        const SizedBox(height: 9),
                        const Text(
                          'Week 1',
                          style: AppStyles.s20w600,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                AppDivider(
                  width: constraints.maxWidth,
                ),
                const SizedBox(height: 25),
                Column(
                  children: const [
                    LeftSideBarTabsTile(
                      title: 'Lecture',
                      selected: true,
                    ),
                    // LeftSideBarTabsTile(
                    //   title: 'Classwork',
                    //   selected: false,
                    // ),
                    // LeftSideBarTabsTile(
                    //   title: 'Homework',
                    //   selected: false,
                    // ),
                    // LeftSideBarTabsTile(
                    //   title: 'Quiz 1',
                    //   selected: false,
                    // ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class LeftSideBarTabsTile extends StatelessWidget {
  const LeftSideBarTabsTile(
      {Key? key, required this.title, required this.selected})
      : super(key: key);
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: selected ? 6 : 4,
            backgroundColor: selected ? AppColors.accent : AppColors.gray600,
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: AppStyles.s15w500.copyWith(
                color: selected ? AppColors.accent : AppColors.gray600),
          )
        ],
      ),
    );
  }
}
