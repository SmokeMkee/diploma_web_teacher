import 'package:diploma_web_teacher/src/features/t_profile/ui/widget/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/app_border_button.dart';
import '../../../widgets/app_eleavted_button.dart';
import '../../../widgets/header_widget.dart';
import '../data/bloc/profile_bloc.dart';


class TProfileScreen extends StatelessWidget {
  const TProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: HeaderWidget(
            title: 'Profile',
          ),
        ),
        backgroundColor: Colors.transparent,
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ProfileError) {
              return const Center(
                child: Text('something error'),
              );
            }
            if (state is ProfileData) {
              return Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: SingleChildScrollView(
                      child: ProfileBodyWidget(
                        profile: state.data,
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
                  const Expanded(
                    child: LeftSideBar(),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class LeftSideBar extends StatelessWidget {
  const LeftSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        PhotoWidget(),

      ],
    );
  }
}

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: NetworkImage(
                'https://thumbs.dreamstime.com/b/businessman-icon-image-male-'
                'avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Mary Jane',
              style: AppStyles.s18w500,
            ),
            const SizedBox(height: 6),
            Text(
              'Teacher',
              style: AppStyles.s15w400.copyWith(color: AppColors.gray600),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppElevatedButton(
                    title: 'Upload photo',
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppBorderButton(
                    title: 'Delete',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Resume',
          style: AppStyles.s17w500,
        ),
        const SizedBox(height: 9),
        Text(
          'Here you can create your resume',
          style: AppStyles.s15w400.copyWith(color: AppColors.gray400),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
