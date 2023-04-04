import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/app_border_button.dart';
import '../../../widgets/app_eleavted_button.dart';
import '../../../widgets/app_text_form_field.dart';
import '../../../widgets/course_container.dart';
import '../../../widgets/header_widget.dart';
import '../../navigation/app_router/app_router.dart';
import '../data/bloc/group_bloc.dart';

class TGroups extends StatelessWidget {
  const TGroups({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              title: 'Groups',
              withDisabilities: false,
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 450,
                    child: AppTextFormField(
                      onChange: (value) {
                        context
                            .read<GroupBloc>()
                            .add(SearchGroupEvent(query: value));
                      },
                      hintText: 'search',
                      hintStyle:
                          AppStyles.s14w500.copyWith(color: AppColors.gray400),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: SvgPicture.asset(
                          AppAssets.svg.search,
                          color: AppColors.gray200,
                        ),
                      ),
                    ),
                  ),
                  AppElevatedIconButton(
                    text: 'Create new group',
                    onTap: () {
                      showAlertDialogCreateGroup(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 36),
              BlocBuilder<GroupBloc, GroupState>(
                builder: (context, state) {
                  if (state is GroupLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is GroupData) {
                    return Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, int index) {
                          return GestureDetector(
                            onTap: () => context.router.push(
                              TGroupDetailedRoute(
                                group: state.listCourse[index],
                              ),
                            ),
                            child: TGroupCard(
                              nameGroup: state.listCourse[index].groupName,
                            ),
                          );
                        },
                        itemCount: state.listCourse.length,
                      ),
                    );
                  }
                  if (state is GroupError) {
                    return Center(
                      child: Text(state.message),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppElevatedIconButton extends StatelessWidget {
  const AppElevatedIconButton(
      {Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          text,
          style: AppStyles.s15w500.copyWith(color: AppColors.white),
        ),
      ),
      icon: SvgPicture.asset(
        AppAssets.svg.add,
        color: AppColors.white,
      ),
    );
  }
}

class TGroupCard extends StatelessWidget {
  const TGroupCard({Key? key, required this.nameGroup}) : super(key: key);
  final String nameGroup;

  @override
  Widget build(BuildContext context) {
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
                children: [
                  CourseContainer(
                    text: nameGroup[0] + nameGroup[1].toUpperCase(),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    nameGroup,
                    style: AppStyles.s15w500,
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

void showAlertDialogCreateGroup(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      titleTextStyle: AppStyles.s20w600,
      titlePadding: const EdgeInsets.symmetric(vertical: 29, horizontal: 44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const Text('New group'),
      content: SizedBox(
        width: MediaQuery.of(context).size.width / 3.5,
        child: const CreateGroupBodyDialog(),
      ),
    ),
  );
}

class CreateGroupBodyDialog extends StatefulWidget {
  const CreateGroupBodyDialog({Key? key}) : super(key: key);

  @override
  State<CreateGroupBodyDialog> createState() => _CreateGroupBodyDialogState();
}

class _CreateGroupBodyDialogState extends State<CreateGroupBodyDialog> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Text('Title'),
            const SizedBox(width: 54),
            Expanded(
              child: AppTextFormField(
                textEditingController: controller,
                hintText: 'Enter the title',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Container(
            height: 2,
            color: AppColors.gray200,
          ),
        ),
        Row(
          children: [
            const Text('Color'),
            const SizedBox(width: 20),
            ...List.generate(
              5,
              (index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.pink,
                  ),
                );
              },
            )
          ],
        ),
        const SizedBox(height: 34),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: AppBorderButton(
                title: 'Cancel',
                onTap: () {
                  context.router.pop();
                },
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: AppElevatedButton(
                title: 'Create',
                onTap: () {
                  context.read<GroupBloc>().add(
                        CreateGroupEvent(nameGroup: controller.text),
                      );

                  context.router.pop();
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
