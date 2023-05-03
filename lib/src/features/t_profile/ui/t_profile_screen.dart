import 'dart:html';

import 'package:diploma_web_teacher/src/features/t_profile/ui/widget/body.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/inclusive_technologies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/app_border_button.dart';
import '../../../widgets/app_eleavted_button.dart';
import '../../../widgets/header_widget.dart';
import '../../localization/generated/l10n.dart';
import '../../theme_manager/src/theme_light.dart';
import '../../theme_manager/theme_manager.dart';
import '../data/bloc/profile_bloc.dart';

class TProfileScreen extends StatefulWidget {
  const TProfileScreen({Key? key}) : super(key: key);

  @override
  State<TProfileScreen> createState() => _TProfileScreenState();
}

class _TProfileScreenState extends State<TProfileScreen> {
  @override
  void didChangeDependencies() {
    context.read<ProfileBloc>().add(
          FetchInfoProfile(),
        );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: HeaderWidget(
            title: S.of(context).profile,
          ),
        ),
        backgroundColor: Colors.transparent,
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ProfileError) {
              return Center(
                child: Text(S.of(context).somethingError),
              );
            }
            if (state is ProfileData) {
              return Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        InclusiveTechnologies.textScale = 2;
                        setState(() {

                        });
                        print(theme.textStyles.s15w500);
                      },
                      child: Text(
                        'sd',
                        style: theme.textStyles.s15w500,
                      )),
                  Expanded(
                    flex: 4,
                    child: SingleChildScrollView(
                      child: ProfileBodyWidget(
                        profile: state.data,
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
                  Expanded(
                    child: LeftSideBar(
                      fullName: '${state.data.name} ${state.data.surname}',
                    ),
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
  const LeftSideBar({Key? key, required this.fullName}) : super(key: key);
  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhotoWidget(
          fullName: fullName,
        ),
      ],
    );
  }
}

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key, required this.fullName}) : super(key: key);
  final String fullName;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

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
            Text(
              fullName,
              style: theme.textStyles.s18w500,
            ),
            const SizedBox(height: 6),
            Text(
              S.of(context).teacher,
              style: theme.textStyles.s15w400
                  .copyWith(color: theme.colors.gray600),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppElevatedButton(
                    title: S.of(context).uploadPhoto,
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
                    title: S.of(context).delete,
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
    var theme = context.watch<ThemeManager>().theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).resume,
          style: theme.textStyles.s17w500,
        ),
        const SizedBox(height: 9),
        Text(
          S.of(context).hereYouCanCreateYourResume,
          style: theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
