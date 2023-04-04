import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_drop_down_button.dart';
import '../../../../widgets/app_text_form_field.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 54),
        const Text(
          'User information',
          style: AppStyles.s15w500,
        ),
        Text(
          'Here you can manage your account',
          style: AppStyles.s15w500.copyWith(
            color: AppColors.gray600,
          ),
        ),
        const SizedBox(height: 38),
        Row(
          children: [
            Expanded(
              child: ProfileTile(
                label: 'First name',
                hintText: 'Enter your first name',
                controller: firstName,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: ProfileTile(
                label: 'Second name',
                hintText: 'Enter your Second name',
                controller: secondName,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        ProfileTile(
          label: 'Patronymic name',
          hintText: 'Enter your patronymic name',
          controller: patronymicName,
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ProfileTile(
                label: 'Date of Birth',
                hintText: 'XX / XX / XXXX',
                controller: dateOfBirth,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.all(15.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.accent),
              child: SvgPicture.asset(
                AppAssets.svg.scheduleBold,
                color: AppColors.white,
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
        ProfileTile(
          label: 'Email address',
          hintText: 'Enter your email address',
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SvgPicture.asset(
              AppAssets.svg.email,
              color: AppColors.gray200,
            ),
          ),
          controller: email,
        ),
        const SizedBox(height: 24),
        ProfileTile(
          label: 'Phone number',
          controller: phone,
          hintText: 'Enter your phone number',
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SvgPicture.asset(
              AppAssets.svg.email,
              color: AppColors.gray200,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: const [
            Flexible(
              child: AppDropDownButton(
                items: [
                  DropdownMenuItem(
                    value: 'Almaty',
                    child: Text(
                      'Almaty',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'almaty',
                    child: Text(
                      'Almaty',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
                initial: 'Almaty',
              ),
            ),
            SizedBox(width: 23),
            Flexible(
                child: AppDropDownButton(
              items: [
                DropdownMenuItem(
                  value: 'Almaty',
                  child: Text(
                    'Almaty',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 'almaty',
                  child: Text(
                    'Almaty',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ],
              initial: 'Almaty',
            )),
          ],
        ),
        const SizedBox(height: 28),
        AppTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Error text';
            } else {
              return null;
            }
          },
          textEditingController: street,
          hintText: 'Street',
          hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                print(firstName.text);
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
                          city: 'Almaty',
                          country: 'Almaty',
                        ),
                      ),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  'Save changes',
                  style: AppStyles.s15w500.copyWith(color: AppColors.white),
                ),
              ),
            ),
            const SizedBox(width: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.gray200, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text('Delete', style: AppStyles.s15w500),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.s15w400,
        ),
        AppTextFormField(
          textEditingController: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Error text';
            } else {
              return null;
            }
          },
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
        ),
      ],
    );
  }
}

class FullNameWidget extends StatelessWidget {
  const FullNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  const Text(
                    'First name',
                    style: AppStyles.s15w400,
                  ),
                  AppTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Error text';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Enter your first name',
                    hintStyle:
                        AppStyles.s15w400.copyWith(color: AppColors.gray400),
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
                  const Text(
                    'Second name',
                    style: AppStyles.s15w400,
                  ),
                  AppTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Error text';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Enter your second name',
                    hintStyle:
                        AppStyles.s15w400.copyWith(color: AppColors.gray400),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Patronymic name',
          style: AppStyles.s15w400,
        ),
        AppTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Error text';
            } else {
              return null;
            }
          },
          hintText: 'Enter your patronymic name',
          hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
        ),
      ],
    );
  }
}
