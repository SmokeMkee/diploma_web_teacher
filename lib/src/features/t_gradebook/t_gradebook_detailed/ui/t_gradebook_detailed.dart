import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';
import '../../../../widgets/search_widget.dart';

class TGradeBookDetailed extends StatelessWidget {
  const TGradeBookDetailed({Key? key}) : super(key: key);

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
              title: 'gradebook',
              withDisabilities: false,
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  // AppBackButton(
                  //   onTap: () {
                  //     context.router.popAndPush(const TGradeBookRouter());
                  //   },
                  // ),
                  SizedBox(width: 34),
                 // CourseContainer(),
                  SizedBox(width: 24),
                  Text(
                    'General English',
                    style: AppStyles.s18w500,
                  )
                ],
              ),
              const SizedBox(height: 36),
              const SearchWidget(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      //onTap: () => context.router.push(const TGradeBookDetailedGroupRoute()),
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
                children: const [
                  //CourseContainer(),
                  SizedBox(width: 18),
                  Text(
                    'ITIS -1914',
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
