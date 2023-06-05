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
  const CoursesDetailedLesson(
      {Key? key,
      required this.courseName,
      required this.unitName,
      required this.unitId})
      : super(key: key);
  final String courseName;
  final String unitName;
  final int unitId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 200),
          child: HeaderWidget(
            title: 'courses > $courseName > $unitName'.toUpperCase(),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CoursesMainContent(
                unitName: unitName,
              ),
              const SizedBox(width: 75),
              const CoursesLeftSideBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class CoursesMainContent extends StatelessWidget {
  const CoursesMainContent({Key? key, required this.unitName})
      : super(key: key);
  final String unitName;

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
                Text(unitName),
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
            const SizedBox(height: 30),
            // const LectureInfoContainer(),
          ],
        ),
      ),
    );
  }
}

class LectureInfoContainer extends StatefulWidget {
  const LectureInfoContainer({Key? key}) : super(key: key);

  @override
  State<LectureInfoContainer> createState() => _LectureInfoContainerState();
}

class _LectureInfoContainerState extends State<LectureInfoContainer> {
  PageController pageController = PageController();

  int getCurrentIndex() {
    return pageController.page!.round();
  }

  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.gray200,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.gray200.withOpacity(0.1),
      ),
      child: Column(
        children: [
          LessonPageBuilder(
            controller: pageController,
            imagePath: [
              ...List.generate(
                10,
                (index) =>
                    'https://www.gannett-cdn.com/presto/2021/03/22/NRCD/9d9dd9e4-e84a'
                    '-402e-ba8f-daa659e6e6c5-PhotoWord_003'
                    '.JPG?width=1320&height=850&fit=crop&format=pjpg&auto=webp',
              ),
            ],
            valueChanged: (int value) {
              setState(() {
                currentPage = value + 1;
              });
            },
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  pageController.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn);
                },
                child: SvgPicture.asset(AppAssets.svg.arrowLeft2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: Text('$currentPage out of 10'),
              ),
              GestureDetector(
                onTap: () {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn);
                },
                child: SvgPicture.asset(AppAssets.svg.arrowRight2),
              ),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class LessonPageBuilder extends StatelessWidget {
  const LessonPageBuilder(
      {Key? key,
      required this.controller,
      required this.imagePath,
      required this.valueChanged})
      : super(key: key);
  final PageController controller;
  final List<String> imagePath;
  final ValueChanged<int> valueChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: valueChanged,
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imagePath[index],
              height: 500,
              fit: BoxFit.fitWidth,
            ),
          );
        },
        itemCount: imagePath.length,
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
  const CoursesLeftSideBar({Key? key, required this.sectionName}) : super(key: key);
  final String sectionName;
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
