import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/app_assets.dart';
import '../../../widgets/app_divider.dart';
import '../../../widgets/app_drop_down_button.dart';
import '../../localization/generated/l10n.dart';
import '../../localization/i_locale_repo.dart';
import '../../theme_manager/inclusive_technologies.dart';
import '../../theme_manager/theme_manager.dart';

class AdditionalSettings extends StatefulWidget {
  const AdditionalSettings({Key? key}) : super(key: key);

  @override
  State<AdditionalSettings> createState() => _AdditionalSettingsState();
}

class _AdditionalSettingsState extends State<AdditionalSettings> {
  dynamic initialValue = '1';
  dynamic initialValueHeight = '1.15';

  dynamic initialValueLina = '1.15';
  List<String> colors = [
    '0xff3274AF',
    '0xff745698',
    '0xffB8433A',
    '0xffC37536',
    '0xff4C979D',
    '0xff57773A',
    '0xffFFFFFF',
    '0xff000000'
  ];

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeManager>().theme;
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                S.of(context).language.toUpperCase(),
                style: theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              const DropButton(),
              const SizedBox(height: 40),
              Text(
                S.of(context).theme,
                style: theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              const DropButtonTheme(),
              const SizedBox(height: 52),
              Text(
                S.of(context).colorBlindness,
                style: theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              const DropButtonBlindnessTheme(),
              const SizedBox(height: 52),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const SizedBox(height: 50),
              Text(
                S.of(context).inclusiveTechnology.toUpperCase(),
                style: theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              Text(
                S.of(context).selectSystemFeaturesForPeopleWithDisabilities,
                style: theme.textStyles.s14w400,
              ),
              ChangeTextSize(
                onChanged: (val) {
                  InclusiveTechnologies.textScale =
                      double.parse(val.toString());
                  setState(
                    () {
                      initialValue = val.toString();
                    },
                  );
                },
                initialValue: initialValue,
              ),
              const SizedBox(height: 50),
              Text(
                S.of(context).selectSystemFeaturesForPeopleWithDisabilities,
                style: theme.textStyles.s14w400,
              ),
              ChangeTextHeight(
                onChanged: (val) {
                  InclusiveTechnologies.lineHeight =
                      double.parse(val.toString());
                  setState(
                    () {
                      initialValueHeight = val.toString();
                    },
                  );
                },
                initialValue: initialValueHeight,
              ),
              const SizedBox(height: 50),
              Text(
                S.of(context).selectSystemFeaturesForPeopleWithDisabilities,
                style: theme.textStyles.s14w400,
              ),
              ChangeLineSpacing(
                onChanged: (val) {
                  InclusiveTechnologies.lineSpacing =
                      double.parse(val.toString());
                  setState(
                    () {
                      initialValueLina = val.toString();
                    },
                  );
                },
                initialValue: initialValueLina,
              ),
              const SizedBox(height: 40),
              Text(
                S.of(context).changeTextColor,
                style: theme.textStyles.s14w400,
              ),
              const SizedBox(height: 9),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: theme.colors.gray200,
                    width: 2,
                  ),
                ),
                width: 400,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                      colors.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(
                            onTap: () {
                              InclusiveTechnologies.textColor = colors[index];
                              setState(() {});
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(
                                int.parse(colors[index]),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              //
              // const SizedBox(height: 40),
              // Text(
              //   S.of(context).changeBgColor,
              //   style: theme.textStyles.s14w400,
              // ),
              // const SizedBox(height: 9),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 15),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8),
              //     border: Border.all(
              //       color: theme.colors.gray200,
              //       width: 2,
              //     ),
              //   ),
              //   width: 400,
              //   height: 75,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       ...List.generate(
              //         colors.length,
              //             (index) {
              //           return Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: 5),
              //             child: GestureDetector(
              //               onTap: () {
              //                 InclusiveTechnologies.bgColor = colors[index];
              //                 setState(() {});
              //               },
              //               child: CircleAvatar(
              //                 radius: 15,
              //                 backgroundColor: Color(
              //                   int.parse(colors[index]),
              //                 ),
              //               ),
              //             ),
              //           );
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 40),
            ],
          );
        },
      ),
    );
  }
}

class ChangeColor extends StatelessWidget {
  const ChangeColor({Key? key, required this.colors, required this.onTap})
      : super(key: key);
  final List<String> colors;
  final Function(String val) onTap;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: theme.colors.gray200,
            width: 2,
          )),
      width: 400,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...List.generate(
            colors.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: onTap(colors[index]),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(
                      int.parse(colors[index]),
                    ),
                  ),
                ),
              );
            },
          )
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //
          //     itemCount: colors.length,
          //     itemBuilder: (context, int index) {
          //       return Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 2),
          //         child: GestureDetector(
          //           onTap: onTap.call(index),
          //           child: CircleAvatar(
          //             radius: 15,
          //             backgroundColor: Color(
          //               int.parse(colors[index]),
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text('Text colors')
        ],
      ),
    );
  }
}

class ChangeTextHeight extends StatelessWidget {
  const ChangeTextHeight({Key? key, this.initialValue, required this.onChanged})
      : super(key: key);

  final dynamic initialValue;
  final Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: Colors.transparent,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: Text(
            '${S.of(context).textHeight} 15%',
            style: theme.textStyles.s15w400.copyWith(
              color: theme.colors.gray400,
            ),
          ),
          value: initialValue,
          items: [
            DropdownMenuItem(
              value: '1.15',
              child: Text(
                '${S.of(context).textHeight} 15%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: '1.25',
              child: Text(
                '${S.of(context).textHeight} 25%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: '1.35',
              child: Text(
                '${S.of(context).textHeight} 35%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class ChangeLineSpacing extends StatelessWidget {
  const ChangeLineSpacing(
      {Key? key, this.initialValue, required this.onChanged})
      : super(key: key);
  final dynamic initialValue;
  final Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: Colors.transparent,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: Text(
            '${S.of(context).lineSpace} 15%',
            style: theme.textStyles.s15w400.copyWith(
              color: theme.colors.gray400,
            ),
          ),
          value: initialValue,
          items: [
            DropdownMenuItem(
              value: '1.15',
              child: Text(
                '${S.of(context).lineSpace} 15%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: '1.25',
              child: Text(
                '${S.of(context).lineSpace} 25%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: '1.35',
              child: Text(
                '${S.of(context).lineSpace} 35%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class ChangeTextSize extends StatelessWidget {
  const ChangeTextSize(
      {Key? key, required this.initialValue, required this.onChanged})
      : super(key: key);
  final dynamic initialValue;
  final Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: Colors.transparent,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: Text(
            '${S.of(context).textSize} 0%',
            style: theme.textStyles.s15w400.copyWith(
              color: theme.colors.gray400,
            ),
          ),
          value: initialValue,
          items: [
            DropdownMenuItem(
              value: '1',
              child: Text(
                '${S.of(context).textSize} 0%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: '1.5',
              child: Text(
                '${S.of(context).textSize} 50%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: '2',
              child: Text(
                '${S.of(context).textSize} 100%',
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class DropButtonBlindnessTheme extends StatefulWidget {
  const DropButtonBlindnessTheme({Key? key}) : super(key: key);

  @override
  State<DropButtonBlindnessTheme> createState() =>
      _DropButtonThemeBlindnessState();
}

class _DropButtonThemeBlindnessState extends State<DropButtonBlindnessTheme> {
  ThemeType categoryValue = ThemeType.pratonopia;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        color: theme.colors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: theme.colors.background,
          dropdownColor: theme.colors.background,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: Text(ThemeType.light.name, style: theme.textStyles.s15w400),
          value: categoryValue,
          items: [
            DropdownMenuItem(
              value: ThemeType.pratonopia,
              child: Text(
                ThemeType.pratonopia.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.deuteranopia,
              child: Text(
                ThemeType.deuteranopia.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.tritanopia,
              child: Text(
                ThemeType.tritanopia.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.achromatopsia,
              child: Text(
                ThemeType.achromatopsia.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.protanomaly,
              child: Text(
                ThemeType.protanomaly.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.deuteranomaly,
              child: Text(
                ThemeType.deuteranomaly.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.tritanomaly,
              child: Text(
                ThemeType.tritanomaly.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.achromatomaly,
              child: Text(
                ThemeType.achromatomaly.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
          ],
          onChanged: (val) {
            setState(
              () {
                categoryValue = val ?? ThemeType.light;
              },
            );
            context.read<ThemeManager>().changeTheme(val ?? ThemeType.light);
          },
        ),
      ),
    );
  }
}

class DropButtonTheme extends StatefulWidget {
  const DropButtonTheme({Key? key}) : super(key: key);

  @override
  State<DropButtonTheme> createState() => _DropButtonThemeState();
}

class _DropButtonThemeState extends State<DropButtonTheme> {
  ThemeType categoryValue = ThemeType.light;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: theme.colors.white,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: Text(ThemeType.light.name, style: theme.textStyles.s15w400),
          value: categoryValue,
          items: [
            DropdownMenuItem(
              value: ThemeType.light,
              child: Text(
                ThemeType.light.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.darkContrast,
              child: Text(
                ThemeType.darkContrast.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.highSaturation,
              child: Text(
                ThemeType.highSaturation.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.invert,
              child: Text(
                ThemeType.invert.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.lowSaturation,
              child: Text(
                ThemeType.lowSaturation.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
          ],
          onChanged: (val) {
            setState(
              () {
                categoryValue = val ?? ThemeType.light;
              },
            );
            context.read<ThemeManager>().changeTheme(val ?? ThemeType.light);
          },
        ),
      ),
    );
  }
}

class DropButton extends StatefulWidget {
  const DropButton({Key? key}) : super(key: key);

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  String categoryValue = 'en';
  dynamic bloc;

  @override
  void didChangeDependencies() {
    bloc = context.read<ILocaleRepo>();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: Colors.transparent,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: LanguageTile(
            title: categoryValue,
            svgPath: AppAssets.svg.usa,
          ),
          value: categoryValue,
          items: [
            DropdownMenuItem(
              value: 'en',
              child: LanguageTile(title: 'English', svgPath: AppAssets.svg.usa),
            ),
            DropdownMenuItem(
              value: 'ru',
              child: LanguageTile(title: 'Russian', svgPath: AppAssets.svg.rus),
            ),
            DropdownMenuItem(
              value: 'kk',
              child: LanguageTile(title: 'Kazakh', svgPath: AppAssets.svg.kz),
            ),
          ],
          onChanged: (val) async {
            setState(
              () {
                categoryValue = val.toString();
              },
            );
            if (val == 'kk') {
              await bloc.apply('kk');
            }
            if (val == 'ru') {
              await bloc.apply('ru');
            }
            if (val == 'en') {
              await bloc.apply('en');
            }
          },
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({Key? key, required this.title, required this.svgPath})
      : super(key: key);
  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Row(
      children: [
        SvgPicture.asset(svgPath),
        const SizedBox(width: 15),
        Text(
          title,
          style: theme.textStyles.s15w400.copyWith(
            color: theme.colors.gray400,
          ),
        ),
      ],
    );
  }
}
