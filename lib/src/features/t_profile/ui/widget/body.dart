import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_drop_down_button.dart';
import '../../../../widgets/app_text_form_field.dart';
import '../../../localization/generated/l10n.dart';
import '../../../theme_manager/theme_manager.dart';
import '../../data/bloc/profile_bloc.dart';
import '../../data/dto/profile_model.dart';

class ProfileBodyWidget extends StatefulWidget {
  const ProfileBodyWidget({Key? key, required this.profile}) : super(key: key);
  final Profile profile;

  @override
  State<ProfileBodyWidget> createState() => _ProfileBodyWidgetState();
}

class _ProfileBodyWidgetState extends State<ProfileBodyWidget> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController secondName = TextEditingController();

  final TextEditingController patronymicName = TextEditingController();
  final TextEditingController dateOfBirth = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController street = TextEditingController();

  @override
  void dispose() {
    firstName.dispose();
    secondName.dispose();
    patronymicName.dispose();
    dateOfBirth.dispose();
    email.dispose();
    phone.dispose();
    street.dispose();
    super.dispose();
  }

  @override
  void initState() {
    firstName.text = widget.profile.name ?? '';
    secondName.text = widget.profile.surname ?? '';
    patronymicName.text = widget.profile.patronymic ?? '';
    dateOfBirth.text = widget.profile.birthdate ?? '';
    email.text = widget.profile.email ?? '';
    phone.text = widget.profile.phone ?? '';
    street.text = widget.profile.street ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 54),
         Text(
          S.of(context).userInformation,
          style: theme.textStyles.s15w500,
        ),
        Text(
          S.of(context).hereYouCanManageYourAccount,
          style: theme.textStyles.s15w500.copyWith(
            color: theme.colors.gray600,
          ),
        ),
        const SizedBox(height: 38),
        Row(
          children: [
            Expanded(
              child: ProfileTile(
                label: S.of(context).firstName,
                hintText: S.of(context).enterYourFirstName,
                controller: firstName,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: ProfileTile(
                label: S.of(context).secondName,
                hintText: S.of(context).enterYourSecondName,
                controller: secondName,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        ProfileTile(
          label: S.of(context).patronymicName,
          hintText: S.of(context).enterYourPatronymicName,
          controller: patronymicName,
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ProfileTile(
                label: S.of(context).dateOfBirth,
                hintText: 'XX / XX / XXXX',
                controller: dateOfBirth,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.all(15.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: theme.colors.accent),
              child: SvgPicture.asset(
                AppAssets.svg.scheduleBold,
                color: theme.colors.white,
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
        ProfileTile(
          label: S.of(context).emailAddress,
          hintText: S.of(context).enterYourEmailAddress,
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SvgPicture.asset(
              AppAssets.svg.email,
              color: theme.colors.gray200,
            ),
          ),
          controller: email,
        ),
        const SizedBox(height: 24),
        ProfileTile(
          label: S.of(context).phoneNumber,
          controller: phone,
          hintText: S.of(context).enterYourPhoneNumber,
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SvgPicture.asset(
              AppAssets.svg.email,
              color: theme.colors.gray200,
            ),
          ),
        ),
        //const SizedBox(height: 24),
        // Row(
        //   children: const [
        //     Flexible(
        //       child: AppDropDownButton(
        //         items: [
        //           DropdownMenuItem(
        //             value: 'Almaty',
        //             child: Text(
        //               'Almaty',
        //               style: TextStyle(
        //                 fontSize: 15,
        //                 color: Colors.black45,
        //               ),
        //             ),
        //           ),
        //           DropdownMenuItem(
        //             value: 'almaty',
        //             child: Text(
        //               'Almaty',
        //               style: TextStyle(
        //                 fontSize: 15,
        //                 color: Colors.black45,
        //               ),
        //             ),
        //           ),
        //         ],
        //         initial: 'Almaty',
        //       ),
        //     ),
        //     SizedBox(width: 23),
        //     Flexible(
        //         child: AppDropDownButton(
        //       items: [
        //         DropdownMenuItem(
        //           value: 'Almaty',
        //           child: Text(
        //             'Almaty',
        //             style: TextStyle(
        //               fontSize: 15,
        //               color: Colors.black45,
        //             ),
        //           ),
        //         ),
        //         DropdownMenuItem(
        //           value: 'almaty',
        //           child: Text(
        //             'Almaty',
        //             style: TextStyle(
        //               fontSize: 15,
        //               color: Colors.black45,
        //             ),
        //           ),
        //         ),
        //       ],
        //       initial: 'Almaty',
        //     )),
        //   ],
        // ),
        const SizedBox(height: 28),
        AppTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).errorText;
            } else {
              return null;
            }
          },
          textEditingController: street,
          hintText: S.of(context).street,
          hintStyle: theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colors.accent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                context.read<ProfileBloc>().add(
                      UpdateInfoProfile(
                        profile: Profile(
                          name: firstName.text,
                          surname: secondName.text,
                          patronymic: patronymicName.text,
                          email: email.text,
                          phone: phone.text,
                          street: street.text,
                          birthdate: dateOfBirth.text,
                          city: S.of(context).almaty,
                          country: S.of(context).almaty,
                        ),
                      ),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  S.of(context).saveChanges,
                  style: theme.textStyles.s15w500.copyWith(color: theme.colors.white),
                ),
              ),
            ),
            const SizedBox(width: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colors.white,
                shape: RoundedRectangleBorder(
                  side:  BorderSide(color: theme.colors.gray200, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Text(S.of(context).delete, style: theme.textStyles.s15w500),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile(
      {Key? key,
      required this.label,
      required this.hintText,
      this.suffixIcon,
      required this.controller})
      : super(key: key);
  final String label;
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textStyles.s15w400,
        ),
        AppTextFormField(
          textEditingController: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).errorText;
            } else {
              return null;
            }
          },

          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: theme.textStyles.s15w400,
        ),
      ],
    );
  }
}

class FullNameWidget extends StatelessWidget {
  const FullNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    S.of(context).firstName,
                    style: theme.textStyles.s15w400,
                  ),
                  AppTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).errorText;
                      } else {
                        return null;
                      }
                    },
                    hintText: S.of(context).enterYourFirstName,
                    hintStyle:
                        theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 23),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    S.of(context).secondName,
                    style: theme.textStyles.s15w400,
                  ),
                  AppTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).errorText;
                      } else {
                        return null;
                      }
                    },
                    hintText: S.of(context).enterYourSecondName,
                    hintStyle:
                        theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
         Text(
          S.of(context).patronymicName,
          style: theme.textStyles.s15w400,
        ),
        AppTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).errorText;
            } else {
              return null;
            }
          },
          hintText: S.of(context).enterYourPatronymicName,
          hintStyle: theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
        ),
      ],
    );
  }
}
